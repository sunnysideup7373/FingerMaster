# -*- coding: utf-8 -*-
"""
fingerMaster.py  -  Maya 2022+ (Python 3)

在任意结构的手指 FK 绑定上，非破坏性地叠加一层 Master 绑定:
  * 手部主控制器: fist(握拳) / fistRoll(依次握拳) / spread(展开) / cup(收掌)
                  relax(放松渐变) / baseCurl / midCurl / tipCurl
  * 每根手指: curl / spread / twist / IK 开关
  * 每根手指 IK (两骨骼 RP IK + 指尖跟随方块旋转, 带极向量)，与 FK 平滑混合, 切换不跳
  * 姿势库: 每个姿势一个 0~100% 权重 (100% 完全覆盖滑条), 可 K 帧, 可混合
  * Bake: 把动画烘焙回原绑定的 FK 控制器

设定只有一步: 选中每根手指的根骨骼 (或根部控制器, 左右手可一起选) -> Build。
  * 选骨骼: 沿骨骼链往下, 每节骨骼往上游 (约束 / 矩阵节点 / 直接连接) 找驱动它的控制器,
            所以控制器之间是平铺+约束、多层 driver 链都没关系
  * 整条链自动向下找: 平铺+约束 (按约束关系) 或 层级嵌套 (按父子关系) 都可以
  * 控制器可以是曲线或骨骼 (骨骼末端的 end/tip 不算)
  * 左右: 名字里的 L/R/left/right, 没有就看在 +X 还是 -X
  * 哪根手指: 名字里的 thumb/index/middle/ring/pinky, 没有就按几何 (方向最偏的是拇指, 离拇指近的是食指)
之后在 Master 控制器 (通道盒) 或「调节」页拖滑条。

原理: 在每个控制器上方插入三层组  drvOff -> drv -> drvInv -> ctl
      drvOff  = 控制器静止时的位置/朝向 (以旋转枢轴为中心)
      drvInv  = drvOff 的逆矩阵, 所以 drv 为 0 时三层合起来是单位矩阵, 控制器的数值完全不变
      drv     = Master 驱动的旋转, 绕控制器自己的枢轴、按控制器自己的朝向旋转
      原控制器的 K 帧不受影响, 叠加在 Master 之上。Remove 后原绑定完全恢复。

安装: 把安装包里的 install.mel 拖进 Maya 视窗 -> 工具架上出现按钮.
用法 (Script Editor - Python):
    import fingerMaster as fm
    fm.ui()
"""
__version__ = '1.6.0'
SHELF_TAG = 'fingerMaster'
import json
import math
import re
from contextlib import contextmanager

import maya.cmds as cmds
import maya.mel as mel
import maya.api.OpenMaya as om

# --------------------------------------------------------------------------
# 配置
# --------------------------------------------------------------------------
CFG = {
    'namespace': '',                       # 按命名自动识别时用, 引用的绑定填 'charName:'
    'ctl_pattern': 'ctl_{side}_Finger*_fk',
    'ctl_regex': r'^ctl_(?P<side>[^_]+)_Finger(?P<finger>[A-Za-z]+?)(?P<seg>[A-Z])_fk$',
    'build_ik': True,
    'tip_ratio': 0.8,                      # 指尖 = 最后一节长度 * ratio
    'zero_rot_on_build': True,             # Build 时临时把控制器旋转归零作为静止姿势
    # 手动覆盖自动识别的轴向: {'Thumb': {'curl': ('z', -1), 'spread': ('y', 1)}}
    'axis_override': {},
}

SIDES = {'l': u'左 L', 'r': u'右 R'}
SLOTS = ['Thumb', 'Index', 'Middle', 'Ring', 'Pinky']
REG_NODE = 'fingerMaster_registry'

# 每单位(滑条 1)的角度
DEG = {'curl': 9.0, 'spread': 3.0, 'twist': 3.0, 'relax': 4.0, 'cup': 3.0, 'seg': 9.0}

SPREAD_W = {'Thumb': 0.6, 'Index': 1.0, 'Middle': 0.0, 'Ring': -0.5, 'Pinky': -1.0}
RELAX_W = {'Thumb': 0.2, 'Index': 0.25, 'Middle': 0.45, 'Ring': 0.65, 'Pinky': 0.85}
CUP_W = {'Thumb': 0.6, 'Index': 0.0, 'Middle': 0.1, 'Ring': 0.5, 'Pinky': 1.0}

GLOBAL_ATTRS = [('fist', -10, 10), ('fistRoll', 0, 10), ('spread', -10, 10),
                ('cup', -10, 10), ('relax', -10, 10),
                ('baseCurl', -10, 10), ('midCurl', -10, 10), ('tipCurl', -10, 10)]

ROLL_WINDOW = 5.0   # fistRoll 中每根手指占用的区间长度 (0~10 内)
AXES = 'xyz'


# --------------------------------------------------------------------------
# 工具
# --------------------------------------------------------------------------
def _wmat(n):
    return om.MMatrix(cmds.xform(n, q=True, ws=True, m=True))


def _pivot(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, rp=True))


def _wpos(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


def _mat_axes(m):
    return [om.MVector(m[0], m[1], m[2]).normal(), om.MVector(m[4], m[5], m[6]).normal(),
            om.MVector(m[8], m[9], m[10]).normal()]


def _frame(m, pos):
    """世界矩阵 m 的朝向 (正交化、去缩放) + 位置 pos."""
    x, y, _ = _mat_axes(m)
    z = (x ^ y).normal()
    y = (z ^ x).normal()
    return om.MMatrix([x.x, x.y, x.z, 0, y.x, y.y, y.z, 0, z.x, z.y, z.z, 0, pos.x, pos.y, pos.z, 1])


def _mlist(m):
    return [m[i] for i in range(16)]


def _is_left(side):
    return side.lower().startswith('l')


def _p(side):
    return 'fm_%s_' % side


def _color(node, idx):
    for s in cmds.listRelatives(node, s=True, f=True) or []:
        cmds.setAttr(s + '.overrideEnabled', 1)
        cmds.setAttr(s + '.overrideColor', idx)


def _merge_shapes(target, srcs):
    for src in srcs:
        for s in cmds.listRelatives(src, s=True, f=True) or []:
            cmds.parent(s, target, r=True, s=True)
        cmds.delete(src)
    for i, s in enumerate(cmds.listRelatives(target, s=True) or []):
        cmds.rename(s, '%sShape%d' % (target.split('|')[-1], i))


def _make_ctl(name, kind, size, parent, pos, color, normal=(0, 1, 0)):
    grp = cmds.createNode('transform', n=name + '_grp', p=parent)
    cmds.xform(grp, ws=True, t=list(pos))
    ctl = cmds.createNode('transform', n=name, p=grp)
    if kind == 'cube':
        s = size * 0.5
        pts = [(-s, s, s), (s, s, s), (s, s, -s), (-s, s, -s), (-s, s, s), (-s, -s, s), (s, -s, s),
               (s, s, s), (s, -s, s), (s, -s, -s), (s, s, -s), (s, -s, -s), (-s, -s, -s),
               (-s, s, -s), (-s, -s, -s), (-s, -s, s)]
        srcs = [cmds.curve(d=1, p=pts)]
    elif kind == 'sphere':
        srcs = [cmds.circle(nr=nr, r=size * 0.5, ch=False)[0] for nr in ((1, 0, 0), (0, 1, 0), (0, 0, 1))]
    else:
        srcs = [cmds.circle(nr=normal, r=size, ch=False)[0]]
    _merge_shapes(ctl, srcs)
    _color(ctl, color)
    return ctl, grp


def _lock_hide(node, attrs=('tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v')):
    for a in attrs:
        cmds.setAttr('%s.%s' % (node, a), lock=True, keyable=False, channelBox=False)


def _add_sep(node, label):
    ln = 'sep_' + re.sub(r'\W', '', label)
    cmds.addAttr(node, ln=ln, nn='________', at='enum', en=label)
    cmds.setAttr('%s.%s' % (node, ln), e=True, channelBox=True)
    cmds.setAttr('%s.%s' % (node, ln), lock=True)


def _add_float(node, ln, mn, mx):
    cmds.addAttr(node, ln=ln, at='double', min=mn, max=mx, dv=0, k=True)
    return '%s.%s' % (node, ln)


def _next_index(node, attr='input3D'):
    ids = cmds.getAttr('%s.%s' % (node, attr), mi=True) or []
    return (max(ids) + 1) if ids else 0


def _contrib(sum_node, src_attr, vec, name):
    """src_attr (标量) * vec (3D, 角度) 加进 sum_node."""
    if all(abs(v) < 1e-6 for v in vec):
        return None
    md = cmds.createNode('multiplyDivide', n=name)
    for ax, v in zip('XYZ', vec):
        cmds.connectAttr(src_attr, '%s.input1%s' % (md, ax))
        cmds.setAttr('%s.input2%s' % (md, ax), v)
    cmds.connectAttr(md + '.output', '%s.input3D[%d]' % (sum_node, _next_index(sum_node)))
    return md


def _axis_vec(axis, scale):
    i, s = axis
    v = [0.0, 0.0, 0.0]
    v[i] = s * scale
    return v


def _short(n):
    return cmds.ls(n)[0]


# --------------------------------------------------------------------------
# 控制器登录 (Registry) - 存在场景里的 network 节点上, 随场景保存
# --------------------------------------------------------------------------
def _reg_attr(side):
    return 'side_' + re.sub(r'\W', '_', side)


def get_registry(side):
    data = {'hand': '', 'fingers': []}
    if cmds.objExists(REG_NODE) and cmds.attributeQuery(_reg_attr(side), node=REG_NODE, exists=True):
        data.update(json.loads(cmds.getAttr('%s.%s' % (REG_NODE, _reg_attr(side))) or '{}'))
    return data


def set_registry(side, data):
    if not cmds.objExists(REG_NODE):
        cmds.createNode('network', n=REG_NODE)
    ln = _reg_attr(side)
    if not cmds.attributeQuery(ln, node=REG_NODE, exists=True):
        cmds.addAttr(REG_NODE, ln=ln, dt='string')
    order = lambda f: SLOTS.index(f['name']) if f['name'] in SLOTS else 99
    data['fingers'].sort(key=order)
    cmds.setAttr('%s.%s' % (REG_NODE, ln), json.dumps(data), type='string')


def _ordered_selection():
    sel = cmds.ls(os=True, type='transform') or cmds.ls(sl=True, type='transform')
    return [s for s in sel if not cmds.ls(s, type='constraint')]


def register_finger(side, name, ctls=None, curl_flip=False, spread_flip=False, metacarpal=None):
    """登录一根手指. ctls 按 根 -> 尖 排列; 不给就用当前选择 (按选择顺序)."""
    ctls = list(ctls) if ctls else _ordered_selection()
    if not ctls:
        raise RuntimeError(u'请按 根 -> 尖 的顺序选择 %s 的控制器' % name)
    for c in ctls:
        if len(cmds.ls(c)) != 1:
            raise RuntimeError(u'%s 不存在或有重名, 请先改成唯一的名字' % c)
    ctls = [_short(c) for c in ctls]
    reg = get_registry(side)
    old = {f['name']: f for f in reg['fingers']}.get(name, {})
    reg['fingers'] = [f for f in reg['fingers'] if f['name'] != name]
    reg['fingers'].append({'name': name, 'ctls': ctls,
                           'curlFlip': old.get('curlFlip', curl_flip),
                           'spreadFlip': old.get('spreadFlip', spread_flip),
                           'metacarpal': old.get('metacarpal', metacarpal)})
    set_registry(side, reg)
    return ctls


def unregister_finger(side, name):
    reg = get_registry(side)
    reg['fingers'] = [f for f in reg['fingers'] if f['name'] != name]
    set_registry(side, reg)


def set_finger_option(side, name, key, value):
    reg = get_registry(side)
    for f in reg['fingers']:
        if f['name'] == name:
            f[key] = value
    set_registry(side, reg)


def register_hand(side, node=None):
    """可选: 指定 Master 跟随的物体. 不指定则跟随第一根手指根部控制器的父物体."""
    if node is None:
        sel = cmds.ls(sl=True, type='transform')
        node = sel[0] if sel else ''
    reg = get_registry(side)
    reg['hand'] = _short(node) if node else ''
    set_registry(side, reg)


def auto_register(side):
    """按 CFG 里的命名规则自动登录."""
    reg = get_registry(side)
    reg['fingers'] = [{'name': f['short'], 'ctls': f['ctls'], 'curlFlip': False,
                       'spreadFlip': False, 'metacarpal': None} for f in discover(side)]
    set_registry(side, reg)
    return [f['name'] for f in reg['fingers']]


def mirror_registry(src_side, dst_side, search, replace):
    """把一侧的登录信息按名字替换复制到另一侧, 如 '_l_' -> '_r_'."""
    reg = get_registry(src_side)
    sub = lambda n: n.replace(search, replace)
    out = {'hand': sub(reg['hand']) if reg['hand'] else '', 'fingers': []}
    missing = []
    for f in reg['fingers']:
        ctls = [sub(c) for c in f['ctls']]
        missing += [c for c in ctls if not cmds.objExists(c)]
        g = dict(f)
        g['ctls'] = ctls
        out['fingers'].append(g)
    if missing:
        raise RuntimeError(u'替换后找不到: %s' % ', '.join(missing[:6]))
    set_registry(dst_side, out)


def export_registry(path):
    data = {s: get_registry(s) for s in SIDES}
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)


def import_registry(path, namespace=''):
    """导入配置; namespace 用于同一套绑定被引用到不同命名空间 (例如 'hero:')."""
    with open(path, encoding='utf-8') as f:
        data = json.load(f)
    strip = lambda n: n.split(':')[-1]
    for side, reg in data.items():
        reg['hand'] = namespace + strip(reg['hand']) if reg.get('hand') else ''
        for fd in reg['fingers']:
            fd['ctls'] = [namespace + strip(c) for c in fd['ctls']]
        set_registry(side, reg)


# --------------------------------------------------------------------------
# 读取手指
# --------------------------------------------------------------------------
def discover(side):
    """按命名规则查找 (仅用于自动登录 / 没登录时的后备)."""
    ns = CFG['namespace']
    found = {}
    for c in cmds.ls(ns + CFG['ctl_pattern'].format(side=side), type='transform') or []:
        m = re.match(CFG['ctl_regex'], c.split('|')[-1].split(':')[-1])
        if not m or m.group('side') != side:
            continue
        found.setdefault(m.group('finger'), []).append((m.group('seg'), _short(c)))
    if not found:
        raise RuntimeError(u'没有登录控制器, 也没按命名找到: %s' % (ns + CFG['ctl_pattern'].format(side=side)))
    out = []
    for short, segs in found.items():
        segs.sort()
        out.append(_finger(short, [c for _, c in segs]))
    out.sort(key=lambda f: SLOTS.index(f['short']) if f['short'] in SLOTS else 99)
    return out


def _finger(name, ctls, curl_flip=False, spread_flip=False, metacarpal=None, curl_axis=None, spread_axis=None):
    n = len(ctls)
    if metacarpal is None:
        metacarpal = n >= 4 and name != 'Thumb'
    return {'short': name, 'low': name[0].lower() + name[1:], 'ctls': list(ctls),
            'segs': [chr(65 + i) for i in range(n)], 'prox': 1 if metacarpal else 0,
            'flip': {'curl': -1 if curl_flip else 1, 'spread': -1 if spread_flip else 1},
            'pref': {'curl': curl_axis, 'spread': spread_axis}}


# --------------------------------------------------------------------------
# 一键: 选中各手指根部控制器 -> 自动找整条链 / 左右 / 哪根手指 -> Build
# --------------------------------------------------------------------------
KEYWORDS = [('Thumb', ('thumb',)), ('Index', ('index', 'pointer', 'fore')),
            ('Middle', ('middle', 'mid')), ('Ring', ('ring',)),
            ('Pinky', ('pinky', 'pinkie', 'little', 'small'))]
END_RE = re.compile(r'(end|tip|nub|null)', re.I)


def _is_ctl(n, joint_mode):
    if joint_mode and cmds.objectType(n) == 'joint':
        return True
    return bool(cmds.listRelatives(n, s=True, type='nurbsCurve'))


def _children(n):
    return [c for c in (cmds.listRelatives(n, c=True, type='transform', f=True) or [])
            if not cmds.objectType(c, isAType='constraint')]


def _ctls_below(n, joint_mode, include_self=False):
    """广度优先找最近一层的控制器."""
    level = [n] if include_self else _children(n)
    while level:
        hits = [x for x in level if _is_ctl(x, joint_mode)]
        if hits:
            return hits
        level = [c for x in level for c in _children(x)]
    return []


def _next_ctl(c, joint_mode):
    """下一节控制器: 先看 c 约束了谁 (平铺+约束结构), 再看层级 (嵌套结构)."""
    if not joint_mode:
        hits = []
        for con in set(cmds.listConnections(c, s=False, d=True, type='constraint') or []):
            for drv in set(cmds.listConnections(con, s=False, d=True, type='transform') or []):
                if cmds.objectType(drv, isAType='constraint') or cmds.ls(drv, l=True) == cmds.ls(c, l=True):
                    continue
                hits += _ctls_below(drv, joint_mode, include_self=True)
        hits = list(dict.fromkeys(cmds.ls(hits, l=True)))
        if len(hits) == 1:
            return hits[0]
    hits = _ctls_below(c, joint_mode)
    if len(hits) == 1:
        if joint_mode and not _ctls_below(hits[0], True) and END_RE.search(hits[0].split('|')[-1]):
            return None   # 末端骨骼 (end/tip) 不算控制器
        return hits[0]
    return None


def _is_driven(n):
    plugs = ['%s.%s' % (n, a) for a in ('rotate', 'rx', 'ry', 'rz', 'translate', 'tx', 'ty', 'tz',
                                        'offsetParentMatrix')]
    return any(cmds.listConnections(p, s=True, d=False) for p in plugs
               if cmds.attributeQuery(p.split('.')[1], node=n, exists=True))


def _driver_ctl(node, max_depth=8):
    """往上游 (约束 / 矩阵节点 / 直接连接) 找最近的曲线控制器."""
    seen = set(cmds.ls(node, l=True))
    level = [node]
    for _ in range(max_depth):
        nxt = []
        for n in level:
            pairs = cmds.listConnections(n, s=True, d=False, c=True, p=True) or []
            srcs = {pairs[i + 1].split('.')[0] for i in range(0, len(pairs), 2)
                    if not pairs[i].endswith('.inverseScale')}   # 父骨骼的 inverseScale 不算
            for src in srcs:
                full = (cmds.ls(src, l=True) or [src])[0]
                if full in seen:
                    continue
                seen.add(full)
                if cmds.objectType(src, isAType='transform') and _is_ctl(src, False):
                    return _short(src)
                nxt.append(src)
        if not nxt:
            break
        level = nxt
    return None


def _trace_pairs_from_joint(root):
    """根骨骼 -> 沿骨骼链往下, 每节骨骼找驱动它的控制器. 返回 [(控制器, 骨骼)]."""
    out, seen, j = [], set(), root
    while j and len(out) < 8:
        c = _driver_ctl(j)
        if not c:
            break
        if c not in seen:
            seen.add(c)
            out.append((c, _short(j)))
        kids = cmds.listRelatives(j, c=True, type='joint', f=True) or []
        j = kids[0] if len(kids) == 1 else None
    return out


def _trace_from_joint(root):
    return [c for c, _ in _trace_pairs_from_joint(root)]


SKIP_TYPES = ('objectSet', 'shadingEngine', 'hyperLayout', 'nodeGraphEditorInfo', 'network', 'dagPose',
              'animCurve', 'container', 'materialInfo')


def _driven_joint(ctl, max_depth=6):
    """往下游找这个控制器驱动的骨骼 (自检用). 控制器本身就是骨骼时返回自己."""
    if cmds.objectType(ctl) == 'joint':
        return _short(ctl)
    seen = set(cmds.ls(ctl, l=True))
    level = [ctl]
    for _ in range(max_depth):
        nxt, hits = [], []
        for n in level:
            pairs = cmds.listConnections(n, s=False, d=True, c=True, p=True) or []
            dsts = {pairs[i + 1].split('.')[0] for i in range(0, len(pairs), 2)
                    if not pairs[i + 1].endswith('.inverseScale')}
            for d in dsts:
                full = (cmds.ls(d, l=True) or [d])[0]
                if full in seen or d.split('|')[-1].startswith('fm_') or \
                        any(cmds.objectType(d, isAType=t) for t in SKIP_TYPES):
                    continue
                seen.add(full)
                if cmds.objectType(d) == 'joint' and not _is_ctl(d, False):
                    hits.append(_short(d))
                elif not (cmds.objectType(d, isAType='transform') and _is_ctl(d, False)):
                    nxt.append(d)
        if hits:
            return hits[0]
        if not nxt:
            break
        level = nxt
    return _short(ctl) if cmds.objectType(ctl) == 'joint' else None


def trace_chain(root):
    joint_mode = cmds.objectType(root) == 'joint' and not cmds.listRelatives(root, s=True, type='nurbsCurve')
    if joint_mode and _is_driven(root):
        chain = _trace_from_joint(root)
        if chain:
            return chain
    chain = [cmds.ls(root, l=True)[0]]
    while len(chain) < 8:
        n = _next_ctl(chain[-1], joint_mode)
        if not n or n in chain:
            break
        chain.append(n)
    return [_short(c) for c in chain]


def _guess_side(name, pos):
    toks = [t for t in re.split(r'[^A-Za-z]+|(?<=[a-z])(?=[A-Z])', name.split(':')[-1]) if t]
    low = [t.lower() for t in toks]
    if any(t in ('l', 'lf', 'lt', 'left') for t in low):
        return 'l'
    if any(t in ('r', 'rt', 'right') for t in low):
        return 'r'
    return 'l' if pos.x >= 0 else 'r'


def _assign_names(chains):
    """chains: [ctl 列表]. 返回 {名字: chain}. 先按名字关键字, 再按几何."""
    out, rest = {}, []
    for ch in chains:
        nm = ch[0].split(':')[-1].lower()
        slot = next((s for s, keys in KEYWORDS if s not in out and any(k in nm for k in keys)), None)
        if slot:
            out[slot] = ch
        else:
            rest.append(ch)
    if not rest:
        return out
    piv = lambda ch: [_pivot(c) for c in ch]
    def cdir(ch):
        p = piv(ch)
        return (p[-1] - p[0]).normal() if len(p) > 1 else _mat_axes(_wmat(ch[0]))[0]
    all_ch = list(out.values()) + rest
    if 'Thumb' not in out and len(all_ch) >= 3:
        ang = []
        for ch in rest:
            others = om.MVector()
            for o in all_ch:
                if o is not ch:
                    others += cdir(o)
            ang.append((cdir(ch).angle(others.normal()), ch))
        a, ch = max(ang, key=lambda x: x[0])
        if a > 0.4:     # ~23°
            out['Thumb'] = ch
            rest.remove(ch)
    def mean(ch):
        s = om.MVector()
        for p in piv(ch):
            s += p
        return s / len(ch)
    if 'Thumb' in out and rest:
        # 横跨手掌的方向 (指向拇指一侧), 按整根手指的平均位置排序; 不用根部, 因为小指掌骨根部离拇指很近
        fdir = om.MVector()
        for ch in rest:
            fdir += cdir(ch)
        fdir = fdir.normal()
        center = om.MVector()
        for ch in rest:
            center += mean(ch)
        center /= len(rest)
        across = mean(out['Thumb']) - center
        across = (across - fdir * (across * fdir)).normal()
        rest.sort(key=lambda ch: -(mean(ch) * across))
    else:
        rest.sort(key=lambda ch: -mean(ch).z)
    free = [s for s in (['Index', 'Middle', 'Ring', 'Pinky'] if len(rest) + len(out) >= 4 else
                        ['Index', 'Middle', 'Pinky']) if s not in out]
    free += ['Extra%d' % i for i in range(1, 10)]
    for ch, s in zip(rest, free):
        out[s] = ch
    return out


def build_from_selection(sel=None):
    """选中各手指的根部控制器 (左右手可一起选, 选多了也没关系) -> 自动建立."""
    sel = sel or cmds.ls(sl=True, type='transform')
    if not sel:
        raise RuntimeError(u'Select the root joint (or root control) of each finger first')
    chains, jmap = [], {}
    for s in sel:
        is_jnt = cmds.objectType(s) == 'joint' and not cmds.listRelatives(s, s=True, type='nurbsCurve')
        pairs = _trace_pairs_from_joint(s) if is_jnt and _is_driven(s) else []
        if pairs:
            chains.append([c for c, _ in pairs])
            jmap.update({c: j for c, j in pairs})
        else:
            chains.append(trace_chain(s))
    inside = {c for ch in chains for c in ch[1:]}
    roots = {}
    for ch in chains:
        if ch[0] not in inside and ch[0] not in roots:
            roots[ch[0]] = ch
    by_side = {}
    for ch in roots.values():
        by_side.setdefault(_guess_side(ch[0], _pivot(ch[0])), []).append(ch)
    done = {}
    for side, chs in sorted(by_side.items()):
        if cmds.objExists(_p(side) + 'rig_grp'):
            raise RuntimeError(u'%s 侧已经建立过, 先 Remove' % side)
        named = _assign_names(chs)
        set_registry(side, {'hand': get_registry(side)['hand'], 'fingers': [
            {'name': n, 'ctls': ch, 'curlFlip': False, 'spreadFlip': False, 'metacarpal': None,
             'joints': [jmap.get(c) or _driven_joint(c) for c in ch]}
            for n, ch in named.items()]})
        build(side)
        done[side] = {n: len(ch) for n, ch in named.items()}
    return done


def rebuild(side):
    """按记录重新建立. 已存的姿势、Master / IK 控制器的关键帧和当前数值都会保留."""
    P = _p(side)
    master = P + 'hand_ctl'
    curves, values, poses = [], {}, {}
    library = pose_library(side)
    if cmds.objExists(master):
        nodes = [master] + (cmds.ls(P + '*_ik_ctl', P + '*_pv_ctl', type='transform') or [])
        for n in nodes:
            for a in cmds.listAttr(n, k=True) or []:
                plug = '%s.%s' % (n, a)
                src = cmds.listConnections(plug, s=True, d=False, p=True, scn=True) or []
                if src and cmds.nodeType(src[0].split('.')[0]).startswith('animCurve'):
                    cmds.disconnectAttr(cmds.listConnections(plug, s=True, d=False, p=True)[0], plug)
                    crv = src[0].split('.')[0]
                    # 曲线默认叫 fm_..., 会被 remove 一起删掉: 先改个临时名字
                    tmp = cmds.rename(crv, 'fmKeep_' + crv)
                    curves.append((tmp + '.' + src[0].split('.', 1)[1], plug, crv))
                elif not src and not cmds.getAttr(plug, lock=True):
                    values[plug] = cmds.getAttr(plug)
        for ln in [a for a in cmds.listAttr(master, ud=True) or [] if a.startswith('pose_')]:
            poses[ln] = {}
            for md in cmds.ls('%s*_%s_md' % (P, ln)) or []:
                key = md[len(P):-len('_%s_md' % ln)]
                poses[ln][key] = list(cmds.getAttr(md + '.input2')[0])
        remove(side)
    m = build(side)
    if library:
        _set_pose_library(side, library)
        for ps in library:
            _pose_net_set(side, ps['name'], ps['values'])
    for ln, vecs in poses.items():
        _add_float(m, ln, 0, 1)
        for key, v in vecs.items():
            s = '%s%s_sum' % (P, key)
            if cmds.objExists(s):
                _contrib(s, '%s.%s' % (m, ln), v, '%s%s_%s_md' % (P, key, ln))
    for plug, v in values.items():
        if cmds.objExists(plug):
            try:
                cmds.setAttr(plug, v)
            except RuntimeError:
                pass
    for src, plug, name in curves:
        if cmds.objExists(src) and cmds.objExists(plug):
            cmds.connectAttr(src, plug, f=True)
            cmds.rename(src.split('.')[0], name)
    return m


def set_finger_axis(side, finger, curl_axis='keep', curl_flip=None, spread_flip=None):
    """手动指定某根手指的弯曲轴 ('auto' / 'x' / 'y' / 'z') 和正负. 已建立时自动重建 (保留姿势和关键帧)."""
    reg = get_registry(side)
    for fd in reg['fingers']:
        if fd['name'] == finger:
            if curl_axis != 'keep':
                fd['curlAxis'] = None if curl_axis in (None, 'auto') else curl_axis.lower()
            if curl_flip is not None:
                fd['curlFlip'] = bool(curl_flip)
            if spread_flip is not None:
                fd['spreadFlip'] = bool(spread_flip)
    set_registry(side, reg)
    if cmds.objExists(_p(side) + 'rig_grp'):
        rebuild(side)


def finger_axes(side, finger):
    """当前建立结果里某根手指的 (弯曲轴, 左右轴), 例如 ('y', 'z')."""
    drv = '%s%sA_drv' % (_p(side), finger)
    out = []
    for ln in ('fmCurl', 'fmSpread'):
        if cmds.objExists(drv) and cmds.attributeQuery(ln, node=drv, exists=True):
            v = cmds.getAttr('%s.%s' % (drv, ln))
            out.append(('-' if v < 0 else '') + AXES[abs(v) - 1])
        else:
            out.append(None)
    return tuple(out)


def get_fingers(side):
    reg = get_registry(side)
    if not reg['fingers']:
        return discover(side)
    out, missing = [], []
    for fd in reg['fingers']:
        missing += [c for c in fd['ctls'] if not cmds.objExists(c)]
        out.append(_finger(fd['name'], fd['ctls'], fd.get('curlFlip'), fd.get('spreadFlip'),
                           fd.get('metacarpal'), fd.get('curlAxis'), fd.get('spreadAxis')))
    if missing:
        raise RuntimeError(u'登录的控制器找不到了: %s' % ', '.join(missing[:6]))
    return out


# --------------------------------------------------------------------------
# 几何分析
# --------------------------------------------------------------------------
def _seg_dir(piv, j, axes):
    if len(piv) < 2:
        return axes[0]
    if j < len(piv) - 1:
        return (piv[j + 1] - piv[j]).normal()
    return (piv[j] - piv[j - 1]).normal()


def _hand_frame(fingers, side):
    by = {f['short']: f for f in fingers}
    others = [f for f in fingers if f['short'] != 'Thumb']
    if len(others) < 2:
        raise RuntimeError(u'至少需要登录两根非拇指手指来判断手掌方向')
    idx = by.get('Index', others[0])
    pky = by.get('Pinky', others[-1])
    mid = by.get('Middle', idx)
    base = lambda f: f['piv'][min(f['prox'], len(f['piv']) - 1)]
    thumb_side = base(idx) - base(pky)
    width = thumb_side.length()
    thumb_side = thumb_side.normal()
    p = min(mid['prox'], len(mid['piv']) - 1)
    fdir = _seg_dir(mid['piv'], p, _mat_axes(mid['wm'][p]))
    palm = (fdir ^ thumb_side) if _is_left(side) else (thumb_side ^ fdir)
    palm = palm.normal()
    t2 = (fdir ^ palm).normal()
    thumb_side = t2 if t2 * thumb_side >= 0 else -t2
    center = om.MVector()
    for f in fingers:
        center += base(f)
    center /= len(fingers)
    return palm, thumb_side, width, center


def _seg_axes(frame, d, curl_dir, spread_dir, override, flip, pref=None):
    """curl_dir: 弯曲时指尖应该运动的方向 (四指 = 掌心方向, 拇指 = 朝掌心中央).
    pref: {'curl': 'x'/'y'/'z'/None, 'spread': ...} 手动指定的轴; 正负仍按方向自动判断, 再乘 flip."""
    axes = _mat_axes(frame)
    pref = pref or {}
    motion = lambda i: axes[i] ^ d     # 绕 i 轴正向旋转时, 指尖的运动方向
    ai = max(range(3), key=lambda i: abs(axes[i] * d))
    if pref.get('curl') in ('x', 'y', 'z'):
        ci = AXES.index(pref['curl'])
    else:
        ci = max([i for i in range(3) if i != ai], key=lambda i: abs(motion(i) * curl_dir))
    rest = [i for i in range(3) if i != ci]
    if pref.get('spread') in ('x', 'y', 'z') and AXES.index(pref['spread']) != ci:
        si = AXES.index(pref['spread'])
    else:
        si = max(rest, key=lambda i: abs(motion(i) * spread_dir) - (1 if i == ai else 0))
    ti = [i for i in range(3) if i not in (ci, si)][0]
    res = {'curl': (ci, (1 if motion(ci) * curl_dir >= 0 else -1) * flip['curl']),
           'spread': (si, (1 if motion(si) * spread_dir >= 0 else -1) * flip['spread']),
           'twist': (ti, 1 if axes[ti] * d >= 0 else -1)}
    for k, (letter, sign) in (override or {}).items():
        res[k] = (AXES.index(letter.lower()), sign)
    return res


@contextmanager
def _rest_pose(fingers):
    """建立时临时把控制器旋转归零, 结束后恢复 (位移保持不动)."""
    saved = []
    if CFG['zero_rot_on_build']:
        for f in fingers:
            for c in f['ctls']:
                for a in ('rx', 'ry', 'rz'):
                    plug = '%s.%s' % (c, a)
                    if cmds.getAttr(plug, settable=True):
                        saved.append((plug, cmds.getAttr(plug)))
                        cmds.setAttr(plug, 0)
    try:
        yield
    finally:
        for plug, v in saved:
            if cmds.objExists(plug.split('.')[0]):
                cmds.setAttr(plug, v)


def _insert_drv(ctl, frame, tag, holder):
    """不改层级 (引用的绑定也能用): 把  drvInv * drv * drvOff * 原 offsetParentMatrix
    连到控制器的 offsetParentMatrix 上. 效果等同在控制器上方插入三层组.
    drvOff/drv/drvInv 只是放在 holder 下面提供局部矩阵. 返回 (drvOff, drv, ctl)."""
    opm = ctl + '.offsetParentMatrix'
    if cmds.getAttr(opm, lock=True):
        raise RuntimeError(u'%s.offsetParentMatrix is locked' % ctl)
    src = (cmds.listConnections(opm, s=True, d=False, p=True) or [None])[0]
    opm_val = om.MMatrix(cmds.getAttr(opm))
    pw = om.MMatrix(cmds.getAttr(ctl + '.parentMatrix[0]'))
    local = frame * (opm_val * pw).inverse()
    off = cmds.createNode('transform', n=tag + '_drvOff', p=holder)
    cmds.xform(off, os=True, m=_mlist(local))
    drv = cmds.createNode('transform', n=tag + '_drv', p=off)
    cmds.setAttr(drv + '.rotateOrder', cmds.getAttr(ctl + '.rotateOrder'))
    inv = cmds.createNode('transform', n=tag + '_drvInv', p=drv)
    cmds.xform(inv, os=True, m=_mlist(local.inverse()))
    mm = cmds.createNode('multMatrix', n=tag + '_opm')
    for k, n in enumerate((inv, drv, off)):
        cmds.connectAttr(n + '.matrix', '%s.matrixIn[%d]' % (mm, k))
    if src:
        cmds.connectAttr(src, mm + '.matrixIn[3]')
    else:
        cmds.setAttr(mm + '.matrixIn[3]', _mlist(opm_val), type='matrix')
    # 记录原状态, Remove 时还原
    cmds.addAttr(mm, ln='fmOrigSrc', dt='string')
    cmds.setAttr(mm + '.fmOrigSrc', src or '', type='string')
    cmds.addAttr(mm, ln='fmOrigVal', dt='matrix')
    cmds.setAttr(mm + '.fmOrigVal', _mlist(opm_val), type='matrix')
    cmds.addAttr(mm, ln='fmCtl', dt='string')
    cmds.setAttr(mm + '.fmCtl', ctl, type='string')
    cmds.connectAttr(mm + '.matrixSum', opm, f=True)
    return off, drv, ctl


def _build_effective(side, master, attrs):
    """每个滑条一个 plusMinusAverage: [0] = 滑条 * (1 - W), 之后每个姿势一项 w_i * 数值."""
    P = _p(side)
    wsum = cmds.createNode('plusMinusAverage', n=P + 'poseW_sum')
    clamp = cmds.createNode('clamp', n=P + 'poseW_clamp')
    cmds.setAttr(clamp + '.maxR', 1)
    cmds.connectAttr(wsum + '.output1D', clamp + '.inputR')
    rev = cmds.createNode('reverse', n=P + 'poseW_rev')
    cmds.connectAttr(clamp + '.outputR', rev + '.inputX')
    eff = {}
    for a in attrs:
        pm = cmds.createNode('plusMinusAverage', n=P + 'eff_' + a)
        mdl = cmds.createNode('multDoubleLinear', n=P + 'effManual_' + a)
        cmds.connectAttr('%s.%s' % (master, a), mdl + '.input1')
        cmds.connectAttr(rev + '.outputX', mdl + '.input2')
        cmds.connectAttr(mdl + '.output', pm + '.input1D[0]')
        eff[a] = pm + '.output1D'
    return eff


def _pw_attr(name):
    return 'pw_' + re.sub(r'\W', '_', name)


def _pose_net_set(side, name, values):
    """建立 / 更新某个姿势的权重属性和网络."""
    P = _p(side)
    m = P + 'hand_ctl'
    ln = _pw_attr(name)
    if not cmds.attributeQuery(ln, node=m, exists=True):
        _add_float(m, ln, 0, 1)
        wsum = P + 'poseW_sum'
        cmds.connectAttr('%s.%s' % (m, ln), '%s.input1D[%d]' % (wsum, _next_index(wsum, 'input1D')))
        # 已经有动画时: 新姿势在所有已有关键帧上先 K 成 0, 之前的动画不受这个新姿势影响
        now = cmds.currentTime(q=True)
        times = sorted({round(t, 4) for t in cmds.keyframe(m, q=True) or []} - {round(now, 4)})
        for t in times:
            cmds.setKeyframe(m, at=ln, t=t, v=0)
    for pm in cmds.ls(P + 'eff_*', type='plusMinusAverage') or []:
        a = pm[len(P + 'eff_'):]
        node = '%s%s__%s' % (P, ln, a)
        v = float(values.get(a, 0.0))
        if cmds.objExists(node):
            cmds.setAttr(node + '.input2', v)
        elif abs(v) > 1e-6:
            node = cmds.createNode('multDoubleLinear', n=node)
            cmds.connectAttr('%s.%s' % (m, ln), node + '.input1')
            cmds.setAttr(node + '.input2', v)
            cmds.connectAttr(node + '.output', '%s.input1D[%d]' % (pm, _next_index(pm, 'input1D')))


def _pose_net_remove(side, name):
    P = _p(side)
    m = P + 'hand_ctl'
    ln = _pw_attr(name)
    # Maya 2026 把 multDoubleLinear 改名为 multDL, ls(type=...) 查不到旧名
    nodes = [n for n in cmds.ls('%s%s__*' % (P, ln)) or []
             if cmds.objectType(n) in ('multDoubleLinear', 'multDL')]
    # 先断开再删 (删除仍连着下游的节点时 Maya 可能连下游一起删);
    # 断开后输入槽会保留最后的数值, 所以要把槽也删掉
    for n in nodes:
        for d in cmds.listConnections(n + '.output', s=False, d=True, p=True) or []:
            cmds.disconnectAttr(n + '.output', d)
            cmds.removeMultiInstance(d, b=True)
    if nodes:
        cmds.delete(nodes)
    if cmds.attributeQuery(ln, node=m, exists=True):
        for d in cmds.listConnections('%s.%s' % (m, ln), s=False, d=True, p=True) or []:
            if d.startswith(P + 'poseW_sum'):
                cmds.disconnectAttr('%s.%s' % (m, ln), d)
                cmds.removeMultiInstance(d, b=True)
        cmds.deleteAttr('%s.%s' % (m, ln))


def effective_values(side):
    """当前实际生效的滑条数值 (已经算上姿势权重)."""
    P = _p(side)
    return {pm[len(P + 'eff_'):]: cmds.getAttr(pm + '.output1D')
            for pm in cmds.ls(P + 'eff_*', type='plusMinusAverage') or []}


def pose_weights(side):
    m = _p(side) + 'hand_ctl'
    return {p['name']: cmds.getAttr('%s.%s' % (m, _pw_attr(p['name'])))
            for p in pose_library(side) if cmds.attributeQuery(_pw_attr(p['name']), node=m, exists=True)}


def bake_poses(side):
    """把当前看到的手型写回滑条, 姿势权重归零 (手型不变, 之后可以直接调滑条)."""
    m = _p(side) + 'hand_ctl'
    vals = effective_values(side)
    for p in pose_library(side):
        ln = _pw_attr(p['name'])
        if cmds.attributeQuery(ln, node=m, exists=True):
            cmds.setAttr('%s.%s' % (m, ln), 0)
    for a, v in vals.items():
        cmds.setAttr('%s.%s' % (m, a), max(-10.0, min(10.0, v)) if a != 'fistRoll' else max(0.0, min(10.0, v)))


# --------------------------------------------------------------------------
# Build
# --------------------------------------------------------------------------
def build(side='l'):
    P = _p(side)
    _AXIS_CACHE.clear()
    if cmds.objExists(P + 'rig_grp'):
        raise RuntimeError(u'%s 已存在, 先 Remove 再重建' % (P + 'rig_grp'))
    fingers = get_fingers(side)
    reg = get_registry(side)
    color = 6 if _is_left(side) else 13

    with _rest_pose(fingers):
        # 先记录所有静止数据, 再动层级 (用 uuid 跟踪, 改层级后名字路径可能变)
        for f in fingers:
            f['uuid'] = [cmds.ls(c, uuid=True)[0] for c in f['ctls']]
            f['piv'] = [_pivot(c) for c in f['ctls']]
            f['wm'] = [_wmat(c) for c in f['ctls']]
        palm, thumb_side, width, center = _hand_frame(fingers, side)
        hand = reg.get('hand') or (cmds.listRelatives(fingers[0]['ctls'][0], p=True) or [None])[0]

        rig = cmds.createNode('transform', n=P + 'rig_grp')
        if hand:
            cmds.parentConstraint(hand, rig, mo=True, n=P + 'rig_grp_parentConstraint')
        holder = cmds.createNode('transform', n=P + 'drv_grp', p=rig)
        cmds.setAttr(holder + '.inheritsTransform', 0)
        cmds.setAttr(holder + '.visibility', 0)

        mpos = center - palm * width * 1.2
        master, _ = _make_ctl(P + 'hand_ctl', 'master', width * 0.45, rig, mpos, 17,
                              normal=tuple(palm))
        _lock_hide(master)

        _add_sep(master, 'GLOBAL')
        g = {ln: _add_float(master, ln, mn, mx) for ln, mn, mx in GLOBAL_ATTRS}
        _add_sep(master, 'FINGERS')
        for f in fingers:
            for suf in ('Curl', 'Spread', 'Twist', 'Base', 'Mid', 'Tip'):   # Base/Mid/Tip = 这根手指的单节弯曲 (负数 = 反折)
                _add_float(master, f['low'] + suf, -10, 10)
            if CFG['build_ik'] and len(f['ctls']) >= 2:
                _add_float(master, f['low'] + 'IK', 0, 1)
        _add_sep(master, 'POSES')
        # 有效值 = 滑条 * (1 - 姿势总权重) + Σ 姿势数值 * 姿势权重  (姿势 100% 时完全覆盖滑条)
        eff = _build_effective(side, master, [ln for ln, _, _ in GLOBAL_ATTRS] +
                               [f['low'] + suf for f in fingers for suf in ('Curl', 'Spread', 'Twist', 'Base', 'Mid', 'Tip')])
        g = {ln: eff[ln] for ln in g}

        roll_list = [f for f in fingers if f['short'] != 'Thumb'][::-1]
        k = len(roll_list)
        roll_start = {f['short']: (i * (10.0 - ROLL_WINDOW) / max(k - 1, 1)) for i, f in enumerate(roll_list)}
        roll_start['Thumb'] = 10.0 - ROLL_WINDOW

        for f in fingers:
            short, low, n, prox = f['short'], f['low'], len(f['ctls']), f['prox']
            name = P + short

            rv = cmds.createNode('remapValue', n=name + '_fistRoll_remap')
            cmds.connectAttr(g['fistRoll'], rv + '.inputValue')
            cmds.setAttr(rv + '.inputMin', roll_start.get(short, 0))
            cmds.setAttr(rv + '.inputMax', roll_start.get(short, 0) + ROLL_WINDOW)
            cmds.setAttr(rv + '.outputMax', 10)
            for i, (pos, val) in enumerate(((0, 0), (1, 1))):
                cmds.setAttr('%s.value[%d].value_Position' % (rv, i), pos)
                cmds.setAttr('%s.value[%d].value_FloatValue' % (rv, i), val)
                cmds.setAttr('%s.value[%d].value_Interp' % (rv, i), 2)  # smooth
            roll_out = rv + '.outValue'

            if short == 'Thumb' and n == 3:
                cw = [0.35, 0.6, 0.9]
            elif n == 3:
                cw = [1.0, 1.1, 0.8]
            elif n == 4 and prox:
                cw = [0.1, 1.0, 1.1, 0.8]
            else:
                cw = [1.0] * n

            f['axes'], f['sums'], f['drvs'], f['offs'] = [], [], [], []
            for j in range(n):
                tag = '%s%s' % (name, f['segs'][j])
                frame = _frame(f['wm'][j], f['piv'][j])
                d = _seg_dir(f['piv'], j, _mat_axes(frame))
                curl_dir = palm
                if short == 'Thumb':
                    # 拇指抓握是朝掌心中央扫过去, 不是直接朝掌心
                    tgt = center + palm * width * 0.6 - f['piv'][j]
                    tgt = tgt - d * (tgt * d)
                    if tgt.length() > 1e-6:
                        curl_dir = tgt.normal()
                ax = _seg_axes(frame, d, curl_dir, thumb_side, CFG['axis_override'].get(short), f['flip'], f['pref'])
                f['axes'].append(ax)

                ctl = cmds.ls(f['uuid'][j])[0]
                off, drv, ctl = _insert_drv(ctl, frame, tag, holder)
                f.setdefault('frames', []).append(frame)
                f['offs'].append(off)
                f['drvs'].append(drv)
                # 记录轴向, 给面板的手部示意图读取: (轴+1)*符号
                for ln, key in (('fmCurl', 'curl'), ('fmSpread', 'spread')):
                    cmds.addAttr(drv, ln=ln, at='long', dv=(ax[key][0] + 1) * ax[key][1])

                s = cmds.createNode('plusMinusAverage', n=tag + '_sum')
                f['sums'].append(s)
                curl = lambda deg: _axis_vec(ax['curl'], deg)
                spr = lambda deg: _axis_vec(ax['spread'], deg)
                tw = lambda deg: _axis_vec(ax['twist'], deg)

                _contrib(s, g['fist'], curl(DEG['curl'] * cw[j]), tag + '_fist_md')
                _contrib(s, roll_out, curl(DEG['curl'] * cw[j]), tag + '_fistRoll_md')
                _contrib(s, g['relax'], curl(DEG['relax'] * RELAX_W.get(short, 0.5) * cw[j]), tag + '_relax_md')
                _contrib(s, eff[low + 'Curl'], curl(DEG['curl'] * cw[j]), tag + '_curl_md')
                if j == 0:
                    _contrib(s, g['cup'], curl(DEG['cup'] * CUP_W.get(short, 0)), tag + '_cup_md')
                if j <= prox:
                    w = 1.0 if j == prox else 0.3
                    _contrib(s, g['spread'], spr(DEG['spread'] * SPREAD_W.get(short, 0) * w), tag + '_spread_md')
                    _contrib(s, eff[low + 'Spread'], spr(DEG['spread'] * w), tag + '_fSpread_md')
                if j == prox:
                    _contrib(s, eff[low + 'Twist'], tw(DEG['twist']), tag + '_twist_md')
                role = j - prox
                if role >= 0:
                    seg_attr = g['baseCurl'] if role == 0 else (g['midCurl'] if role == 1 else g['tipCurl'])
                    _contrib(s, seg_attr, curl(DEG['seg']), tag + '_segCurl_md')
                    _contrib(s, eff[low + ('Base', 'Mid', 'Tip')[min(role, 2)]], curl(DEG['seg']), tag + '_fSeg_md')

            f['ctls'] = [cmds.ls(u)[0] for u in f['uuid']]

            ik = None
            if CFG['build_ik'] and n >= 2:
                ik = _build_ik(f, side, rig, master, width, palm)

            for j in range(n):
                drv, s = f['drvs'][j], f['sums'][j]
                if ik and j >= ik[1]:
                    pb = cmds.createNode('pairBlend', n='%s%s_ikfk_pb' % (name, f['segs'][j]))
                    cmds.setAttr(pb + '.rotateOrder', cmds.getAttr(drv + '.rotateOrder'))
                    cmds.connectAttr(s + '.output3D', pb + '.inRotate1')
                    cmds.connectAttr(ik[0][j] + '.rotate', pb + '.inRotate2')
                    cmds.connectAttr('%s.%sIK' % (master, low), pb + '.weight')
                    cmds.connectAttr(pb + '.outRotate', drv + '.rotate')
                else:
                    cmds.connectAttr(s + '.output3D', drv + '.rotate')
                    if ik:   # 掌骨: IK 链跟着 FK 走
                        cmds.connectAttr(drv + '.rotate', ik[0][j] + '.rotate')

    print(u'[fingerMaster] %s 完成: %s' % (side, ', '.join(f['short'] for f in fingers)))
    if any(fd.get('joints') for fd in get_registry(side)['fingers']):
        verify(side, fix=True)
    cmds.select(master)
    return master


def _build_ik(f, side, rig, master, width, palm):
    """手指 IK: 两骨骼 RP IK 解前面的关节, 最后一节跟随 IK 控制器的旋转.
    这样 FK -> IK 对齐是精确的 (不会跳), 旋转绿色方块可以控制指尖朝向.
    返回 (ik 骨骼列表, IK 起始节) ; 掌骨 (起始节之前) 保持 FK."""
    name = _p(side) + f['short']
    offs, n = f['offs'], len(f['offs'])
    start = f['prox']
    if n - start < 2:
        return None
    root = cmds.createNode('transform', n=name + '_ikJnt_grp', p=rig)
    cmds.setAttr(root + '.visibility', 0)

    jnts, parent = [], root
    for j, off in enumerate(offs):
        jn = cmds.createNode('joint', n='%s%s_ik_jnt' % (name, f['segs'][j]), p=parent)
        cmds.setAttr(jn + '.rotateOrder', cmds.getAttr(f['drvs'][j] + '.rotateOrder'))
        cmds.xform(jn, ws=True, m=_mlist(f['frames'][j]))   # 控制器静止时的朝向/枢轴
        cmds.makeIdentity(jn, apply=True, r=True, t=False, s=False)
        cmds.setAttr(jn + '.radius', width * 0.08)
        jnts.append(jn)
        parent = jn
    last = jnts[-1]
    # 最后一节的朝向在其控制器空间里的矩阵 (对齐用)
    frame_in_ctl = _wmat(last) * _wmat(f['ctls'][-1]).inverse()
    cmds.addAttr(last, ln='fmFrameInCtl', dt='matrix')
    cmds.setAttr(last + '.fmFrameInCtl', _mlist(frame_in_ctl), type='matrix')

    for jn, ax in zip(jnts[start + 1:], f['axes'][start + 1:]):
        i, sgn = ax['curl']
        cmds.setAttr('%s.r%s' % (jn, AXES[i]), sgn * 15)
    cmds.joint(jnts[start], e=True, spa=True, ch=True)
    bent_pv = _pole_pos([_wpos(x) for x in jnts[start:]], palm)
    for jn in jnts:
        cmds.setAttr(jn + '.rotate', 0, 0, 0)
    # 极向量放在手指自然弯曲的平面里 (根关节不会被扭转); 记录它在根部控制器空间的位置, 对齐时用
    pv_pos = bent_pv
    pv_local = om.MPoint(pv_pos) * _wmat(f['ctls'][start]).inverse()
    cmds.addAttr(jnts[start], ln='fmPvInCtl', at='double3')
    for a in 'XYZ':
        cmds.addAttr(jnts[start], ln='fmPvInCtl' + a, at='double', p='fmPvInCtl')
    cmds.setAttr(jnts[start] + '.fmPvInCtl', pv_local.x, pv_local.y, pv_local.z)

    last_m = cmds.xform(last, q=True, ws=True, m=True)   # 建 IK 前记录, 建 IK 时解算器会动骨骼
    solver = 'ikSCsolver' if n - start == 1 else 'ikRPsolver'
    ikh, eff = cmds.ikHandle(sj=jnts[start], ee=last, sol=solver, n=name + '_ikh')
    cmds.rename(eff, name + '_eff')
    cmds.setAttr(ikh + '.visibility', 0)

    ik_ctl, ik_grp = _make_ctl(name + '_ik_ctl', 'cube', width * 0.18, rig, om.MVector(last_m[12:15]), 14)
    cmds.xform(ik_grp, ws=True, m=last_m)
    cmds.parent(ikh, ik_ctl)
    cmds.orientConstraint(ik_ctl, last, mo=False, n=name + '_tipOrient')   # 方块朝向 == 最后一节朝向
    pv_ctl, pv_grp = _make_ctl(name + '_pv_ctl', 'sphere', width * 0.12, rig, pv_pos, 14)
    cmds.poleVectorConstraint(pv_ctl, ikh, n=name + '_pvConstraint')
    _lock_hide(ik_ctl, ('sx', 'sy', 'sz', 'v'))
    _lock_hide(pv_ctl, ('rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v'))

    cnd = cmds.createNode('condition', n=name + '_ikVis_cnd')
    cmds.setAttr(cnd + '.operation', 2)  # greater than
    cmds.setAttr(cnd + '.colorIfTrueR', 1)
    cmds.setAttr(cnd + '.colorIfFalseR', 0)
    cmds.connectAttr('%s.%sIK' % (master, f['low']), cnd + '.firstTerm')
    for g in (ik_grp, pv_grp):
        cmds.connectAttr(cnd + '.outColorR', g + '.visibility')
    return jnts, start


def _pole_pos(pts, palm):
    start, end = pts[0], pts[-1]
    mid = om.MVector()
    for p in pts[1:-1]:
        mid += p
    mid /= max(len(pts) - 2, 1)
    line = end - start
    proj = start + line * (((mid - start) * line) / (line * line))
    dirv = mid - proj
    if dirv.length() < 1e-4:
        dirv = -palm
    return mid + dirv.normal() * line.length() * 0.8


# --------------------------------------------------------------------------
# Remove
# --------------------------------------------------------------------------
def remove(side='l'):
    P = _p(side)
    _AXIS_CACHE.clear()
    # 先把「直接叠加」改过的连接接回去
    restore = []
    for n in cmds.ls(P + '*_inj_*') or []:
        if cmds.attributeQuery('fmReroute', node=n, exists=True):
            restore += [l.split('|') for l in (cmds.getAttr(n + '.fmReroute') or '').splitlines() if '|' in l]
    for src, dst in restore:   # 先接回原连接 (删除仍连着下游的节点时, Maya 可能连下游节点一起删)
        if cmds.objExists(src) and cmds.objExists(dst):
            cmds.connectAttr(src, dst, f=True)
    if cmds.ls(P + '*_inj_*'):
        cmds.delete(cmds.ls(P + '*_inj_*'))
    # 还原控制器的 offsetParentMatrix
    for mm in cmds.ls(P + '*_opm', type='multMatrix') or []:
        if not cmds.attributeQuery('fmCtl', node=mm, exists=True):
            continue
        ctl = cmds.getAttr(mm + '.fmCtl')
        src = cmds.getAttr(mm + '.fmOrigSrc')
        plug = ctl + '.offsetParentMatrix'
        if not cmds.objExists(ctl):
            continue
        if src and cmds.objExists(src):
            cmds.connectAttr(src, plug, f=True)
        else:
            if cmds.isConnected(mm + '.matrixSum', plug):
                cmds.disconnectAttr(mm + '.matrixSum', plug)
            cmds.setAttr(plug, cmds.getAttr(mm + '.fmOrigVal'), type='matrix')
        cmds.delete(mm)
    # 用 uuid: 层级嵌套时, 移动上一节会改变下一节的路径
    for uid in cmds.ls(P + '*_drvOff', type='transform', uuid=True) or []:
        found = cmds.ls(uid, long=True)
        if not found:
            continue
        off = found[0]
        drv = (cmds.listRelatives(off, c=True, type='transform', f=True) or [None])[0]
        inv = (cmds.listRelatives(drv, c=True, type='transform', f=True) or [None])[0] if drv else None
        if drv:
            for a in ('rx', 'ry', 'rz', 'rotate'):
                for s in cmds.listConnections('%s.%s' % (drv, a), s=True, d=False, p=True) or []:
                    cmds.disconnectAttr(s, '%s.%s' % (drv, a))
            cmds.setAttr(drv + '.rotate', 0, 0, 0)
        par = cmds.listRelatives(off, p=True, f=True)
        uuid = uid
        for c in (cmds.listRelatives(inv, c=True, f=True) or []) if inv else []:
            if cmds.objectType(c, isAType='shape'):
                continue
            if par:
                cmds.parent(c, par[0], r=True)
            else:
                cmds.parent(c, w=True, r=True)
        cmds.delete(cmds.ls(uuid))
    leftovers = [x for x in (cmds.ls(P + '*') or []) if cmds.objExists(x)]
    if leftovers:
        cmds.delete(leftovers)
    print(u'[fingerMaster] %s 已移除, 原 FK 绑定已还原' % side)


# --------------------------------------------------------------------------
# Bake: 把 Master 的效果烘焙回原绑定的 FK 控制器
# --------------------------------------------------------------------------
def _keyed_times(nodes, start, end):
    times = set()
    for n in nodes:
        for t in cmds.keyframe(n, q=True, t=(start, end)) or []:
            times.add(round(t, 4))
    return times


def bake(side, start=None, end=None, every_frame=True, remove_master=True):
    """逐帧记录每节手指控制器在 Master 作用下的世界姿态, 去掉 Master 的影响后写回控制器并 K 帧.
    every_frame=False: 只在有关键帧的帧 (Master / IK 方块 / 手指控制器) 烘焙, 曲线更干净.
    remove_master=False: 保留 Finger Master, 但清掉它的关键帧并归零 (之后可以继续用)."""
    P = _p(side)
    master = P + 'hand_ctl'
    if not cmds.objExists(master):
        raise RuntimeError('Nothing to bake on side %s' % side)
    start = cmds.playbackOptions(q=True, min=True) if start is None else start
    end = cmds.playbackOptions(q=True, max=True) if end is None else end
    chains = [fd['ctls'] for fd in get_registry(side)['fingers']]
    ctls = [c for ch in chains for c in ch]
    fm_ctls = [master] + (cmds.ls(P + '*_ik_ctl', P + '*_pv_ctl', type='transform') or [])
    if every_frame:
        frames = [float(f) for f in range(int(math.floor(start)), int(math.ceil(end)) + 1)]
    else:
        frames = sorted(_keyed_times(fm_ctls + ctls, start, end) | {float(start), float(end)})
    now = cmds.currentTime(q=True)
    # 1) 记录 (Master 生效时) 每帧的世界矩阵
    worlds = {}
    for f in frames:
        cmds.currentTime(f, update=True)
        for c in ctls:
            worlds[(c, f)] = cmds.getAttr(c + '.worldMatrix[0]')
    trans0 = {c: cmds.getAttr(c + '.translate')[0] for c in ctls}
    # 2) 去掉 Master 的影响
    if remove_master:
        remove(side)
    else:
        for n in fm_ctls:
            cmds.cutKey(n, clear=True)
        for a in cmds.listAttr(master, k=True, ud=True) or []:
            cmds.setAttr('%s.%s' % (master, a), 0)
    # 3) 写回控制器 (每根手指从根到尖, 因为下一节的父物体跟随上一节)
    moved_t = set()
    for f in frames:
        cmds.currentTime(f, update=True)
        for ch in chains:
            for c in ch:
                rot = [a for a in ('rx', 'ry', 'rz') if cmds.getAttr('%s.%s' % (c, a), settable=True)]
                if not rot:
                    continue
                t_before = cmds.getAttr(c + '.translate')[0]
                cmds.xform(c, ws=True, m=worlds[(c, f)])
                cmds.setKeyframe(c, at=rot, t=f)
                t_after = cmds.getAttr(c + '.translate')[0]
                if any(abs(a - b) > 1e-3 for a, b in zip(t_after, trans0[c])):
                    moved_t.add(c)
                    cmds.setKeyframe(c, at=[a for a in ('tx', 'ty', 'tz')
                                            if cmds.getAttr('%s.%s' % (c, a), settable=True)], t=f)
                elif any(abs(a - b) > 1e-6 for a, b in zip(t_after, t_before)):
                    cmds.setAttr(c + '.translate', *t_before)
    # 4) Euler 过滤, 避免旋转曲线跳变
    curves = [x for c in ctls for x in (cmds.listConnections(c + '.rotate', s=True, d=False, type='animCurve') or [])
              + [y for a in ('rx', 'ry', 'rz') for y in (cmds.listConnections('%s.%s' % (c, a), s=True, d=False,
                                                                                  type='animCurve') or [])]]
    if curves:
        cmds.filterCurve(list(set(curves)), filter='euler')
    cmds.currentTime(now, update=True)
    print('[fingerMaster] baked %s: %d controls x %d frames (%s)%s' % (
        side, len(ctls), len(frames), 'every frame' if every_frame else 'keyed frames',
        ', translate keyed on %d' % len(moved_t) if moved_t else ''))
    return len(frames)


# --------------------------------------------------------------------------
# 自检 / 自动补救 / 诊断
# --------------------------------------------------------------------------
LAST_REPORT = {}
_ROT_OUT = {'rotate': '', 'rotateX': 'x', 'rotateY': 'y', 'rotateZ': 'z', 'rx': 'x', 'ry': 'y', 'rz': 'z'}


def _inject(side, ctl, tag):
    """控制器的局部数值 (rotate / matrix) 被绑定直接读取时, 在中间插一个加法节点,
    让绑定读到 「控制器数值 + Master」. 约束读的是世界矩阵, 已经包含 Master, 不改."""
    off, drv, inv = tag + '_drvOff', tag + '_drv', tag + '_drvInv'
    pairs = cmds.listConnections(ctl, s=False, d=True, c=True, p=True) or []
    pma = mm = None
    log = []
    for i in range(0, len(pairs), 2):
        src, dst = pairs[i], pairs[i + 1]
        attr = src.split('.', 1)[1]
        dnode = dst.split('.')[0]
        if dnode.split('|')[-1].startswith('fm_') or cmds.objectType(dnode, isAType='constraint'):
            continue
        if attr in _ROT_OUT:
            if not pma:
                pma = cmds.createNode('plusMinusAverage', n=tag + '_inj_rot')
                cmds.connectAttr(ctl + '.rotate', pma + '.input3D[0]')
                cmds.connectAttr(drv + '.rotate', pma + '.input3D[1]')
            out = pma + '.output3D' + _ROT_OUT[attr]
        elif attr in ('matrix', 'xformMatrix'):
            if not mm:
                mm = cmds.createNode('multMatrix', n=tag + '_inj_mtx')
                for k, n in enumerate((ctl, inv, drv, off)):
                    cmds.connectAttr(n + '.matrix', '%s.matrixIn[%d]' % (mm, k))
            out = mm + '.matrixSum'
        else:
            continue
        cmds.disconnectAttr(src, dst)
        cmds.connectAttr(out, dst, f=True)
        log.append('%s|%s' % (src, dst))
    for n in (pma, mm):
        if n:
            cmds.addAttr(n, ln='fmReroute', dt='string')
            cmds.setAttr(n + '.fmReroute', '\n'.join(l for l in log), type='string')
    return len(log)


def _rel(j, ref):
    m = _wmat(j)
    return m * _wmat(ref).inverse() if ref else m


def _moved(a, b, tol=1e-4):
    return any(abs(a[i] - b[i]) > tol for i in range(16))


def verify(side, fix=True, quiet=False):
    """逐节检查: 转控制器 -> 骨骼动不动; 拉 Master -> 骨骼动不动.
    控制器能带动、Master 带不动时 (fix=True) 自动改成直接叠加, 再检查一次."""
    P = _p(side)
    m = P + 'hand_ctl'
    reg = get_registry(side)
    rows = []
    if not cmds.objExists(m):
        return {}
    for fd in reg['fingers']:
        joints = fd.get('joints') or [None] * len(fd['ctls'])
        low = _low(fd['name'])
        for j, (ctl, jnt) in enumerate(zip(fd['ctls'], joints)):
            seg = chr(65 + j)
            tag = '%s%s%s' % (P, fd['name'], seg)
            row = {'finger': fd['name'], 'seg': seg, 'ctl': ctl, 'joint': jnt}
            rows.append(row)
            if not jnt or not cmds.objExists(jnt):
                row['result'] = 'no joint found'
                continue
            if j > 0 and joints[j - 1] and cmds.objExists(joints[j - 1]):
                ref = joints[j - 1]
            else:   # 原来的父物体 (跳过 Master 插入的 fm_ 组)
                ref = (cmds.listRelatives(jnt, p=True, f=True) or [None])[0]
                while ref and ref.split('|')[-1].startswith('fm_'):
                    ref = (cmds.listRelatives(ref, p=True, f=True) or [None])[0]
            ca = _axis_code(tag + '_drv', 'fmCurl')
            # 1) 控制器本身能不能带动骨骼
            plug = '%s.r%s' % (ctl, AXES[ca[0]]) if ca else None
            ctl_ok = None
            if plug and cmds.getAttr(plug, settable=True):
                a = _rel(jnt, ref)
                v = cmds.getAttr(plug)
                cmds.setAttr(plug, v + 10)
                ctl_ok = _moved(a, _rel(jnt, ref))
                cmds.setAttr(plug, v)
            # 2) Master 能不能带动骨骼
            mplug = '%s.%sCurl' % (m, low)

            def master_ok():
                a = _rel(jnt, ref)
                v = cmds.getAttr(mplug)
                cmds.setAttr(mplug, v + 3 if v < 7 else v - 3)
                ok = _moved(a, _rel(jnt, ref))
                cmds.setAttr(mplug, v)
                return ok
            if master_ok():
                row['result'] = 'ok'
            elif ctl_ok is False:
                row['result'] = 'control does not drive this joint (FK off / IK mode?)'
            elif fix and _inject(side, ctl, tag) and master_ok():
                row['result'] = 'ok (direct mode)'
            else:
                row['result'] = 'NOT WORKING'
    good = sum(r['result'].startswith('ok') for r in rows)
    checked = sum(r['result'] != 'no joint found' for r in rows)
    LAST_REPORT[side] = {'rows': rows, 'ok': good, 'checked': checked, 'total': len(rows)}
    if not quiet:
        print('[fingerMaster] %s check: %d / %d joints follow the master' % (side, good, checked))
        for r in rows:
            print('    %-7s %s  %-28s -> %-28s %s' % (r['finger'], r['seg'], r['ctl'], r['joint'], r['result']))
    return LAST_REPORT[side]


def diagnose(nodes=None):
    """把选中物体 (控制器 / 骨骼) 的连接关系打印出来. 出问题时把输出发给开发者."""
    nodes = nodes or cmds.ls(sl=True)
    lines = ['Finger Master %s diagnose  (Maya %s)' % (__version__, cmds.about(v=True))]
    for n in nodes:
        lines.append('')
        lines.append('== %s  [%s]  parent: %s' % (n, cmds.objectType(n), (cmds.listRelatives(n, p=True) or ['-'])[0]))
        shapes = cmds.listRelatives(n, s=True) or []
        lines.append('   shapes: %s' % ', '.join('%s(%s)' % (s, cmds.objectType(s)) for s in shapes))
        ins = cmds.listConnections(n, s=True, d=False, c=True, p=True) or []
        outs = cmds.listConnections(n, s=False, d=True, c=True, p=True) or []
        for title, pairs, arrow in (('inputs', ins, '<-'), ('outputs', outs, '->')):
            lines.append('   %s:' % title)
            for i in range(0, len(pairs), 2):
                other = pairs[i + 1].split('.')[0]
                lines.append('     %-34s %s %s  [%s]' % (pairs[i], arrow, pairs[i + 1], cmds.objectType(other)))
        if cmds.objectType(n) == 'joint':
            lines.append('   driver control: %s' % _driver_ctl(n))
        else:
            lines.append('   drives joint: %s' % _driven_joint(n))
            lines.append('   next control: %s' % _next_ctl(n, False))
    for s, r in LAST_REPORT.items():
        lines.append('')
        lines.append('last check %s: %d / %d' % (s, r['ok'], r['checked']))
        lines += ['   %s %s %s -> %s : %s' % (x['finger'], x['seg'], x['ctl'], x['joint'], x['result']) for x in r['rows']]
    text = '\n'.join(lines)
    print(text)
    return text


# --------------------------------------------------------------------------
# Pose 库 / IK 对齐
# --------------------------------------------------------------------------
def store_pose(side, pose_name):
    """把「当前看到的手型」(Master 滑条 + 其他姿势 + FK 控制器) 存成一个 0~1 的姿势.
    存完后滑条/其他姿势/FK 控制器归零, 新姿势设为 1, 所以手型看起来不变."""
    P = _p(side)
    master = P + 'hand_ctl'
    ln = 'pose_' + re.sub(r'\W', '_', pose_name)
    if cmds.attributeQuery(ln, node=master, exists=True):
        raise RuntimeError(u'Pose "%s" already exists' % pose_name)
    fingers = get_fingers(side)
    totals = []
    for f in fingers:
        for seg, ctl in zip(f['segs'], f['ctls']):
            drv = '%s%s%s_drv' % (P, f['short'], seg)
            if not cmds.objExists(drv):
                continue
            r = [a + b for a, b in zip(cmds.getAttr(drv + '.rotate')[0], cmds.getAttr(ctl + '.rotate')[0])]
            totals.append((f['short'], seg, ctl, r))
    if all(abs(v) < 1e-3 for *_, r in totals for v in r):
        raise RuntimeError(u'The hand is in its rest pose - pose it first')
    _add_float(master, ln, 0, 1)
    for short, seg, ctl, r in totals:
        if any(abs(v) > 1e-4 for v in r):
            _contrib('%s%s%s_sum' % (P, short, seg), '%s.%s' % (master, ln), r,
                     '%s%s%s_%s_md' % (P, short, seg, ln))
    for a in cmds.listAttr(master, k=True, ud=True) or []:
        if a != ln and not a.endswith('IK') and cmds.getAttr('%s.%s' % (master, a), settable=True):
            cmds.setAttr('%s.%s' % (master, a), 0)
    for *_, ctl, _r in totals:
        for a in ('rx', 'ry', 'rz'):
            if cmds.getAttr('%s.%s' % (ctl, a), settable=True):
                cmds.setAttr('%s.%s' % (ctl, a), 0)
    cmds.setAttr('%s.%s' % (master, ln), 1)
    print(u'[fingerMaster] 存储姿势 %s' % ln)
    return ln


# ---- 姿势库: 姿势 = 一组 Master 滑条数值 (和预设一样, 在 Master 层级完整覆盖手型) ----
POSE_LIB_ATTR = 'fmPoseLibrary'


def slider_attrs(side):
    """Master 上的整手 + 单指滑条 (不含 IK、姿势权重和旧版叠加姿势)."""
    m = _p(side) + 'hand_ctl'
    return [a for a in cmds.listAttr(m, k=True, ud=True) or []
            if not a.endswith('IK') and not a.startswith('pose_') and not a.startswith('pw_')] if cmds.objExists(m) else []


def pose_library(side):
    """[{'name': ..., 'values': {属性: 数值}}], 存在 Master 控制器上, 随场景保存."""
    m = _p(side) + 'hand_ctl'
    if not cmds.objExists(m) or not cmds.attributeQuery(POSE_LIB_ATTR, node=m, exists=True):
        return []
    return json.loads(cmds.getAttr('%s.%s' % (m, POSE_LIB_ATTR)) or '[]')


def _set_pose_library(side, lib):
    m = _p(side) + 'hand_ctl'
    if not cmds.attributeQuery(POSE_LIB_ATTR, node=m, exists=True):
        cmds.addAttr(m, ln=POSE_LIB_ATTR, dt='string')
    cmds.setAttr('%s.%s' % (m, POSE_LIB_ATTR), json.dumps(lib), type='string')


def save_hand_pose(side, name, overwrite=False):
    """把当前所有滑条的数值存成姿势. 返回 FK 控制器上有旋转的数量 (这些不会存进姿势)."""
    m = _p(side) + 'hand_ctl'
    eff = effective_values(side)       # 当前看到的手型 (含其他姿势)
    vals = {a: round(eff.get(a, cmds.getAttr('%s.%s' % (m, a))), 4) for a in slider_attrs(side)}
    if all(abs(v) < 1e-4 for v in vals.values()):
        raise RuntimeError('All sliders are 0 - pose the hand with the sliders first')
    lib = pose_library(side)
    old = next((i for i, p in enumerate(lib) if p['name'] == name), None)
    if old is not None and not overwrite:
        raise RuntimeError('Pose "%s" already exists' % name)
    if old is not None:
        lib[old] = {'name': name, 'values': vals}     # 覆盖, 保持原来的位置
    else:
        lib.append({'name': name, 'values': vals})
    _set_pose_library(side, lib)
    _pose_net_set(side, name, vals)
    fk = 0
    for f in get_fingers(side):
        for c in f['ctls']:
            if any(abs(v) > 1e-3 for v in cmds.getAttr(c + '.rotate')[0]):
                fk += 1
    return fk


def delete_hand_pose(side, name):
    _pose_net_remove(side, name)
    _set_pose_library(side, [p for p in pose_library(side) if p['name'] != name])


def set_pose_weight(side, name, w, exclusive=False):
    """设姿势权重 (0~1). 其他姿势按比例让出, 总和不超过 1. exclusive: 其他姿势归零."""
    m = _p(side) + 'hand_ctl'
    ws = pose_weights(side)
    w = max(0.0, min(1.0, w))
    cmds.setAttr('%s.%s' % (m, _pw_attr(name)), w)
    others = {n: v for n, v in ws.items() if n != name}
    total = sum(others.values())
    for n, v in others.items():
        nv = 0.0 if exclusive else (v * (1.0 - w) / total if total + w > 1.0 and total > 1e-9 else v)
        cmds.setAttr('%s.%s' % (m, _pw_attr(n)), nv)


def apply_hand_pose(side, name, weight=1.0):
    """姿势设为 weight, 其他姿势归零."""
    set_pose_weight(side, name, weight, exclusive=True)


def remove_pose(side, ln):
    """删除一个已存储的姿势滑条及其节点."""
    P = _p(side)
    nodes = cmds.ls('%s*_%s_md' % (P, ln)) or []
    if nodes:
        cmds.delete(nodes)
    master = P + 'hand_ctl'
    if cmds.attributeQuery(ln, node=master, exists=True):
        cmds.deleteAttr('%s.%s' % (master, ln))


def snap_ik_to_fk(side, finger=None):
    """把 IK 方块 / 极向量对齐到当前手指 (切 IK 前用, 切换不会跳). finger=None 表示全部."""
    P = _p(side)
    for f in get_fingers(side):
        if finger and f['short'] != finger:
            continue
        ik_ctl, pv_ctl = P + f['short'] + '_ik_ctl', P + f['short'] + '_pv_ctl'
        last = '%s%s%s_ik_jnt' % (P, f['short'], f['segs'][-1])
        if not cmds.objExists(ik_ctl):
            continue
        m = om.MMatrix(cmds.getAttr(last + '.fmFrameInCtl')) * _wmat(f['ctls'][-1])
        cmds.xform(ik_ctl, ws=True, m=_mlist(m))
        start = '%s%s%s_ik_jnt' % (P, f['short'], f['segs'][f['prox']])
        pv = om.MPoint(cmds.getAttr(start + '.fmPvInCtl')[0]) * _wmat(f['ctls'][f['prox']])
        cmds.xform(pv_ctl, ws=True, t=[pv.x, pv.y, pv.z])

# --------------------------------------------------------------------------
# UI
# --------------------------------------------------------------------------
try:
    from PySide6 import QtCore, QtGui, QtWidgets
    from shiboken6 import wrapInstance
except ImportError:  # Maya 2022-2024
    from PySide2 import QtCore, QtGui, QtWidgets
    from shiboken2 import wrapInstance
import math
import time

PRESETS = [
    ('Fist', {'fist': 10}),
    ('Grab', {'fist': 5, 'cup': 3, 'spread': -1}),
    ('Open', {'spread': 6, 'fist': -1.5}),
    ('Relax', {'relax': 6, 'spread': 1}),
]
HAND_ATTRS = [('fist', 'Fist', 'Curl all fingers'),
              ('spread', 'Spread', 'Fan fingers apart / together'),
              ('fistRoll', 'Roll', 'Curl one finger after another, pinky first'),
              ('cup', 'Cup', 'Fold pinky, ring and thumb toward the palm'),
              ('relax', 'Relax', 'Natural rest curl, more toward the pinky'),
              ('baseCurl', 'Base', 'Curl only the base joints'),
              ('midCurl', 'Mid', 'Curl only the middle joints'),
              ('tipCurl', 'Tip', 'Curl only the tip joints')]
ABBR = {'Thumb': 'Th', 'Index': 'In', 'Middle': 'Mi', 'Ring': 'Ri', 'Pinky': 'Pi'}
OBJ_NAME = 'fingerMasterQtWin'
SCALE_VAR = 'fingerMasterUIScale2'

C_BG = '#2a2b2e'
C_PANEL = '#33353a'
C_TRACK = '#1f2023'
C_TEXT = '#d8d8d8'
C_DIM = '#8a8d93'
C_FINGER = '#9aa0a8'
C_HI = '#f0b44c'
C_IK = '#5cc073'
C_KEY = '#d94a4a'
C_SIDE = {'l': '#4a90d9', 'r': '#d9664a'}

# 手部示意图布局 (左手, 手背视角, 手指朝上, 拇指在右): (x, y, 角度, [节长])
GLYPH = {
    'Index': (0.635, 0.47, 7, [0.16, 0.105, 0.085]),
    'Middle': (0.515, 0.455, 0, [0.175, 0.115, 0.09]),
    'Ring': (0.395, 0.47, -6, [0.16, 0.105, 0.08]),
    'Pinky': (0.285, 0.505, -14, [0.125, 0.085, 0.07]),
    'Thumb': (0.70, 0.76, 52, [0.13, 0.105, 0.085]),
}
PALM = (0.24, 0.45, 0.47, 0.42)   # x, y, w, h


def _glyph_bounds():
    """整只手 (含手指张开 ±25°) 的外框, 用来把手完整放进格子里."""
    px, py, pw, ph = PALM
    pts = [(px, py), (px + pw, py + ph)]
    for bx, by, ang, segs in GLYPH.values():
        for sp in (-25, 0, 25):
            x, y = bx, by
            for L in segs:
                a = math.radians(ang + sp)
                x, y = x + math.sin(a) * L, y - math.cos(a) * L
                pts.append((x, y))
    m = 0.06
    return (min(p[0] for p in pts) - m, min(p[1] for p in pts) - m,
            max(p[0] for p in pts) + m, max(p[1] for p in pts) + m)


BOUNDS = _glyph_bounds()


def _maya_main():
    from maya import OpenMayaUI as omui
    ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(ptr), QtWidgets.QWidget) if ptr else None


def _epos(e):
    return e.position() if hasattr(e, 'position') else QtCore.QPointF(e.pos())


def _gpos(e):
    return e.globalPos() if hasattr(e, 'globalPos') else e.globalPosition().toPoint()


def _run(fn, *args, **kw):
    cmds.undoInfo(openChunk=True)
    try:
        return fn(*args, **kw)
    except Exception as e:
        cmds.warning('[fingerMaster] %s' % e)
        if _WIN:
            _WIN.flash(str(e), error=True)
    finally:
        cmds.undoInfo(closeChunk=True)


def _low(n):
    return n[0].lower() + n[1:]


# ---------------- 手型数据 ----------------
_AXIS_CACHE = {}


def _axis_code(drv, ln, cached=False):
    key = (drv, ln)
    if cached and key in _AXIS_CACHE:
        return _AXIS_CACHE[key]
    r = None
    if cmds.objExists(drv) and cmds.attributeQuery(ln, node=drv, exists=True):
        v = cmds.getAttr('%s.%s' % (drv, ln))
        r = (abs(v) - 1, (1 if v > 0 else -1))
    if cached:
        _AXIS_CACHE[key] = r
    return r


def live_state(side):
    """每根手指当前的弯曲 (每节角度) 和左右角度, 用来画示意图."""
    P = _p(side)
    out = {}
    for fd in get_registry(side)['fingers']:
        curls, spread = [], 0.0
        prox = 1 if len(fd['ctls']) >= 4 and fd['name'] != 'Thumb' else 0
        for j, ctl in enumerate(fd['ctls']):
            drv = '%s%s%s_drv' % (P, fd['name'], chr(65 + j))
            ca, sa = _axis_code(drv, 'fmCurl', True), _axis_code(drv, 'fmSpread', True)
            if not ca:
                break
            r = cmds.getAttr(drv + '.rotate')[0]
            rc = cmds.getAttr(ctl + '.rotate')[0] if cmds.objExists(ctl) else (0, 0, 0)
            curls.append((r[ca[0]] + rc[ca[0]]) * ca[1])
            if j <= prox:
                spread += (r[sa[0]] + rc[sa[0]]) * sa[1]
        out[fd['name']] = {'curl': curls, 'spread': spread}
    return out


def pose_state(side, ln):
    """某个已存姿势在 1.0 时的手型."""
    P = _p(side)
    out = {}
    for fd in get_registry(side)['fingers']:
        curls, spread = [], 0.0
        prox = 1 if len(fd['ctls']) >= 4 and fd['name'] != 'Thumb' else 0
        for j in range(len(fd['ctls'])):
            seg = chr(65 + j)
            drv = '%s%s%s_drv' % (P, fd['name'], seg)
            md = '%s%s%s_%s_md' % (P, fd['name'], seg, ln)
            ca, sa = _axis_code(drv, 'fmCurl'), _axis_code(drv, 'fmSpread')
            v = cmds.getAttr(md + '.input2')[0] if cmds.objExists(md) else (0, 0, 0)
            curls.append(v[ca[0]] * ca[1] if ca else 0)
            if sa and j <= prox:
                spread += v[sa[0]] * sa[1]
        out[fd['name']] = {'curl': curls, 'spread': spread}
    return out


def finger_totals(side, name, state):
    """某根手指实际的总量, 换算成单指滑条的单位: 弯曲 / 左右 / 扭转.
    state = live_state() 的结果 (预设、整手、姿势、IK、FK 控制器全部算进去)."""
    fd = {f['name']: f for f in get_registry(side)['fingers']}.get(name)
    st = state.get(name)
    if not fd or not st:
        return {}
    n = len(fd['ctls'])
    prox = 1 if n >= 4 and name != 'Thumb' else 0
    cw = [0.35, 0.6, 0.9] if (name == 'Thumb' and n == 3) else \
        [1.0, 1.1, 0.8] if n == 3 else [0.1, 1.0, 1.1, 0.8] if (n == 4 and prox) else [1.0] * n
    out = {'Curl': sum(st['curl']) / (DEG['curl'] * sum(cw[:len(st['curl'])]) or 1.0),
           'Spread': st['spread'] / (DEG['spread'] * (1.3 if prox else 1.0))}
    segs = st['curl'][prox:]
    for k, suf in enumerate(('Base', 'Mid', 'Tip')):
        if k < len(segs):
            out[suf] = (segs[k] if k < 2 else sum(segs[2:])) / DEG['seg']
    tw = '%seff_%sTwist.output1D' % (_p(side), _low(name))
    if cmds.objExists(tw.split('.')[0]):
        out['Twist'] = cmds.getAttr(tw)
    return out


def preset_state(values, names=('Thumb', 'Index', 'Middle', 'Ring', 'Pinky')):
    """按 Master 滑条数值估算手型 (画预设 / 姿势图标用)."""
    out = {}
    seg_attr = ('baseCurl', 'midCurl', 'tipCurl')
    for n in names:
        low = _low(n)
        cw = [0.35, 0.6, 0.9] if n == 'Thumb' else [1.0, 1.1, 0.8]
        fist = values.get('fist', 0) + values.get(low + 'Curl', 0)
        curls = [DEG['curl'] * w * fist +
                 DEG['relax'] * RELAX_W.get(n, 0.5) * w * values.get('relax', 0) +
                 DEG['seg'] * (values.get(seg_attr[j], 0) + values.get(low + ('Base', 'Mid', 'Tip')[j], 0)) +
                 (DEG['cup'] * CUP_W.get(n, 0) * values.get('cup', 0) if j == 0 else 0)
                 for j, w in enumerate(cw)]
        out[n] = {'curl': curls, 'spread': DEG['spread'] * (SPREAD_W.get(n, 0) * values.get('spread', 0) +
                                                             values.get(low + 'Spread', 0))}
    return out


# ---------------- 手部示意图绘制 ----------------
def paint_hand(p, rect, state, side='l', selected=None, hover=None, ik=(), small=False):
    """把手完整画进 rect. 返回 {名字: QPainterPath} 用于点击检测."""
    p.setRenderHint(QtGui.QPainter.Antialiasing)
    x0, y0, x1, y1 = BOUNDS
    bw, bh = x1 - x0, y1 - y0
    sc = min(rect.width() / bw, rect.height() / bh)
    ox = rect.x() + (rect.width() - bw * sc) / 2.0
    oy = rect.y() + (rect.height() - bh * sc) / 2.0
    mir = not _is_left(side)
    X = lambda x: ox + ((x1 - x) if mir else (x - x0)) * sc
    Y = lambda y: oy + (y - y0) * sc
    paths = {}

    px, py, pw, ph = PALM
    palm = QtGui.QPainterPath()
    palm.addRoundedRect(QtCore.QRectF(min(X(px), X(px + pw)), Y(py), pw * sc, ph * sc), sc * 0.07, sc * 0.07)
    p.setPen(QtCore.Qt.NoPen)
    p.setBrush(QtGui.QColor('#5a5f68' if hover == 'Palm' else '#4a4e56'))
    p.drawPath(palm)
    paths['Palm'] = palm

    fw = sc * (0.075 if not small else 0.09)
    for name, (bx, by, ang, segs) in GLYPH.items():
        st = state.get(name)
        if st is None:
            continue
        curls = list(st['curl'])[-3:]
        curls += [0.0] * (3 - len(curls))
        a = ang + st['spread'] * (1.0 if name != 'Thumb' else 0.6)
        col = QtGui.QColor(C_IK if name in ik else C_FINGER)
        if name == selected:
            col = QtGui.QColor(C_HI)
        elif name == hover:
            col = col.lighter(125)
        x, y, c = bx, by, 0.0
        pts = [(x, y)]
        for L, cj in zip(segs, curls):
            c += cj
            k = math.cos(math.radians(c))
            aa = a - (c * 0.55 if name == 'Thumb' else 0)
            if name == 'Thumb':
                k = 0.55 + 0.45 * k
            x, y = x + math.sin(math.radians(aa)) * L * k, y - math.cos(math.radians(aa)) * L * k
            pts.append((x, y))
        stroke = QtGui.QPainterPath()
        for i in range(len(pts) - 1):
            seg_col = QtGui.QColor(col).darker(135) if sum(curls[:i + 1]) > 90 else col
            p.setPen(QtGui.QPen(seg_col, fw, QtCore.Qt.SolidLine, QtCore.Qt.RoundCap))
            a0, a1 = pts[i], pts[i + 1]
            p.drawLine(QtCore.QPointF(X(a0[0]), Y(a0[1])), QtCore.QPointF(X(a1[0]), Y(a1[1])))
            stroke.moveTo(X(a0[0]), Y(a0[1]))
            stroke.lineTo(X(a1[0]), Y(a1[1]))
        if not small:
            p.setPen(QtCore.Qt.NoPen)
            p.setBrush(QtGui.QColor(C_BG))
            for q in pts[1:-1]:
                p.drawEllipse(QtCore.QPointF(X(q[0]), Y(q[1])), fw * 0.16, fw * 0.16)
        sp = QtGui.QPainterPathStroker()
        sp.setWidth(fw * 1.6)
        sp.setCapStyle(QtCore.Qt.RoundCap)
        paths[name] = sp.createStroke(stroke)
    return paths


# ---------------- 控件 ----------------
class HandView(QtWidgets.QWidget):
    """可交互的手: 拖手指 ↕弯曲 ↔左右, 拖手掌 = 整手, 点击手指 = 切到该手指页."""
    fingerPicked = QtCore.Signal(str)

    def __init__(self, ui, w, h):
        super().__init__()
        self.ui = ui
        self.setFixedSize(w, h)
        self.setMouseTracking(True)
        self.state, self.paths = {}, {}
        self.hover = self.drag = None
        self.setToolTip('Drag a finger:  up/down = curl,  left/right = spread\n'
                        'Drag the palm:  whole hand\nClick a finger: open its tab\n'
                        'Double-click: reset   ·   Right-click: more')

    def paintEvent(self, _):
        p = QtGui.QPainter(self)
        r = QtCore.QRectF(self.rect()).adjusted(1, 1, -1, -1)
        p.setRenderHint(QtGui.QPainter.Antialiasing)
        p.setPen(QtCore.Qt.NoPen)
        p.setBrush(QtGui.QColor(C_PANEL))
        p.drawRoundedRect(r, 8, 8)
        self.paths = paint_hand(p, r.adjusted(4, 4, -4, -4), self.state, self.ui.side,
                                self.ui.cur_finger, self.hover, self.ui.ik_fingers())

    def _hit(self, pos):
        for n in ('Thumb', 'Index', 'Middle', 'Ring', 'Pinky', 'Palm'):
            if n in self.paths and self.paths[n].contains(pos):
                return n
        return None

    def _attrs(self, name):
        if name == 'Palm':
            return ('fist', 'spread')
        return (_low(name) + 'Curl', _low(name) + 'Spread')

    def mouseMoveEvent(self, e):
        pos = _epos(e)
        if self.drag:
            name, start, base, moved = self.drag
            d = pos - start
            m = self.ui.master()
            if not m:
                return
            k = 15.0 / max(self.height(), 1)
            ca, sa = self._attrs(name)
            for a, v in ((ca, base[0] + d.y() * k), (sa, base[1] + d.x() * k * self.ui.mirror())):
                v = max(-10, min(10, v))
                plug = '%s.%s' % (m, a)
                if abs(cmds.getAttr(plug) - v) > 1e-4:     # 没变就不写, 省一次 Maya 计算
                    cmds.setAttr(plug, v)
            self.drag = (name, start, base, moved or d.manhattanLength() > 3)
            self.ui.request_poll()
            return
        h = self._hit(pos)
        if h != self.hover:
            self.hover = h
            self.setCursor(QtCore.Qt.SizeAllCursor if h else QtCore.Qt.ArrowCursor)
            self.update()

    def mousePressEvent(self, e):
        name = self._hit(_epos(e))
        m = self.ui.master()
        if not name or not m:
            return
        if e.button() == QtCore.Qt.RightButton:
            self.ui.finger_menu(name, _gpos(e))
            return
        ca, sa = self._attrs(name)
        cmds.undoInfo(openChunk=True)
        self.ui.take_over()
        self.drag = (name, _epos(e), (cmds.getAttr('%s.%s' % (m, ca)), cmds.getAttr('%s.%s' % (m, sa))), False)

    def mouseReleaseEvent(self, e):
        if not self.drag:
            return
        name, _, _, moved = self.drag
        self.drag = None
        if moved:
            self.ui.touched(['%s.%s' % (self.ui.master(), a) for a in self._attrs(name)])
        cmds.undoInfo(closeChunk=True)
        if not moved and name != 'Palm':
            self.fingerPicked.emit(name)

    def mouseDoubleClickEvent(self, e):
        name = self._hit(_epos(e))
        m = self.ui.master()
        if not name or not m:
            return
        attrs = ('fist', 'spread') if name == 'Palm' else tuple(_low(name) + s for s in ('Curl', 'Spread', 'Twist'))
        self.ui.tween({'%s.%s' % (m, a): 0.0 for a in attrs})

    def leaveEvent(self, _):
        self.hover = None
        self.update()


class AttrBar(QtWidgets.QWidget):
    """横条: 拖动改数值, 双击归零, 右键 K 帧. 红点 = 有关键帧."""

    def __init__(self, ui, attr, label, tip='', color=None, h=22, lw=None):
        super().__init__()
        self.ui, self.attr, self.label = ui, attr, label
        self.color = QtGui.QColor(color or C_SIDE.get(ui.side, C_HI))
        self.value, self.mn, self.mx, self.keyed = 0.0, -10.0, 10.0, 0
        self.lw = lw or int(h * 2.3)
        self.setFixedHeight(h)
        self.setMinimumWidth(self.lw + h * 3)
        self.setToolTip((tip + '\n' if tip else '') + 'Drag: set  ·  Double-click: 0  ·  Right-click: key')
        self.setCursor(QtCore.Qt.SizeHorCursor)
        self._drag = False

    def plug(self):
        if getattr(self, '_plug', None) is None:     # 面板重建时横条也会重建, 缓存即可
            m = self.ui.master()
            self._plug = '%s.%s' % (m, self.attr) if m and cmds.attributeQuery(self.attr, node=m, exists=True) else None
        return self._plug if self._plug and cmds.objExists(self._plug.split('.')[0]) else None

    def sync(self):
        pl = self.plug()
        if not pl:
            return
        node = pl.split('.')[0]
        v = cmds.getAttr(pl)
        if not hasattr(self, '_range'):
            self._range = (cmds.attributeQuery(self.attr, node=node, min=True)[0],
                           cmds.attributeQuery(self.attr, node=node, max=True)[0])
        mn, mx = self._range
        now = time.time()
        if now - getattr(self, '_kt', 0) > 0.4 or self.ui._key_dirty:
            self._kt = now
            t = cmds.currentTime(q=True)
            kc = cmds.keyframe(pl, q=True, kc=True)
            self._keyed = 2 if kc and cmds.keyframe(pl, q=True, t=(t, t)) else (1 if kc else 0)
        keyed = getattr(self, '_keyed', 0)
        if (v, mn, mx, keyed) != (self.value, self.mn, self.mx, self.keyed):
            self.value, self.mn, self.mx, self.keyed = v, mn, mx, keyed
            self.update()

    def paintEvent(self, _):
        p = QtGui.QPainter(self)
        p.setRenderHint(QtGui.QPainter.Antialiasing)
        h, lw = self.height(), self.lw
        f = p.font()
        f.setPixelSize(int(h * 0.5))
        p.setFont(f)
        p.setPen(QtGui.QColor(C_TEXT))
        p.drawText(QtCore.QRectF(0, 0, lw - 10, h), QtCore.Qt.AlignRight | QtCore.Qt.AlignVCenter, self.label)
        if self.keyed:
            p.setPen(QtCore.Qt.NoPen)
            p.setBrush(QtGui.QColor(C_KEY) if self.keyed == 2 else QtGui.QColor('#8a4a4a'))
            p.drawEllipse(QtCore.QPointF(lw - 4, h / 2), h * 0.12, h * 0.12)
        tr = QtCore.QRectF(lw, h * 0.16, self.width() - lw - 1, h * 0.68)
        p.setPen(QtCore.Qt.NoPen)
        p.setBrush(QtGui.QColor(C_TRACK))
        p.drawRoundedRect(tr, tr.height() / 2, tr.height() / 2)
        span = (self.mx - self.mn) or 1.0
        zero = self.mn if self.mn >= 0 else 0.0
        X = lambda v: tr.x() + (max(self.mn, min(self.mx, v)) - self.mn) / span * tr.width()
        xa, xb = X(zero), X(self.value)
        ghost = getattr(self, 'ghost', None)
        if ghost is not None:
            # 浅色长条 = 这根手指实际的总量 (预设 / 整手 / 姿势 / IK / FK 全部算进去)
            xg = X(ghost)
            c = QtGui.QColor(self.color)
            c.setAlpha(80)
            p.setBrush(c)
            p.drawRoundedRect(QtCore.QRectF(min(xa, xg), tr.y(), abs(xg - xa), tr.height()), tr.height() / 2, tr.height() / 2)
            # 中间的细实心条 = 这根手指自己的滑条
            inner = QtCore.QRectF(min(xa, xb), tr.center().y() - tr.height() * 0.17, abs(xb - xa), tr.height() * 0.34)
            p.setBrush(self.color)
            p.drawRoundedRect(inner, inner.height() / 2, inner.height() / 2)
        else:
            p.setBrush(self.color)
            p.drawRoundedRect(QtCore.QRectF(min(xa, xb), tr.y(), abs(xb - xa), tr.height()), tr.height() / 2, tr.height() / 2)
        if self.mn < 0:
            p.setPen(QtGui.QPen(QtGui.QColor('#55585e'), 1))
            p.drawLine(QtCore.QPointF(xa, tr.y() + 2), QtCore.QPointF(xa, tr.bottom() - 2))
        shown = ghost if ghost is not None else self.value
        p.setPen(QtGui.QColor('#ffffff' if abs(shown) > 0.05 else C_DIM))
        p.drawText(tr.adjusted(6, 0, -7, 0), QtCore.Qt.AlignRight | QtCore.Qt.AlignVCenter,
                   ('%.2f' if self.mx <= 1 else '%.1f') % shown)

    def set_ghost(self, v):
        if v is None or getattr(self, 'ghost', None) is None or abs(v - self.ghost) > 0.02:
            self.ghost = v
            self.update()

    def _set_from_x(self, x):
        pl = self.plug()
        if not pl:
            return
        t = (x - self.lw) / max(self.width() - self.lw - 1, 1)
        v = self.mn + max(0.0, min(1.0, t)) * (self.mx - self.mn)
        v = round(v * (100 if self.mx <= 1 else 10)) / (100.0 if self.mx <= 1 else 10.0)
        if abs(v - self.value) > 1e-6:
            cmds.setAttr(pl, v)
            self.sync()
            self.ui.request_poll()

    def mousePressEvent(self, e):
        pl = self.plug()
        if not pl:
            return
        if e.button() == QtCore.Qt.RightButton:
            menu = QtWidgets.QMenu(self)
            menu.addAction('Key whole hand', lambda: cmds.setKeyframe(self.ui.hand_plugs()))
            menu.addAction('Key this only', lambda: cmds.setKeyframe(pl))
            menu.addAction('Delete Key', lambda: cmds.cutKey(pl, t=(cmds.currentTime(q=True),) * 2))
            menu.addAction('Reset', lambda: self.ui.tween({pl: 0.0}))
            menu.exec_(_gpos(e))
            return
        cmds.undoInfo(openChunk=True)
        if not self.attr.endswith('IK'):
            self.ui.take_over()
        self._drag = True
        self._set_from_x(_epos(e).x())

    def mouseMoveEvent(self, e):
        if self._drag:
            self._set_from_x(_epos(e).x())

    def mouseReleaseEvent(self, e):
        if self._drag:
            self._drag = False
            self.ui.touched([self.plug()])
            cmds.undoInfo(closeChunk=True)

    def mouseDoubleClickEvent(self, e):
        pl = self.plug()
        if pl:
            self.ui.tween({pl: 0.0})


class HandCard(QtWidgets.QWidget):
    """小手型卡片: 预设 / 存储的姿势 / 新建."""

    def __init__(self, ui, title, state, size, on_click=None, pose=None, plus=False, tip=''):
        super().__init__()
        self.ui, self.title, self.state = ui, title, state
        self.on_click, self.pose, self.plus = on_click, pose, plus
        self.weight, self.hover, self._press = 0.0, False, None
        self.setFixedSize(size, int(size * 1.3))
        self.setCursor(QtCore.Qt.PointingHandCursor)
        self.setToolTip(tip)

    def sync(self):
        m = self.ui.master()
        if self.pose and m and cmds.attributeQuery(self.pose, node=m, exists=True):
            w = cmds.getAttr('%s.%s' % (m, self.pose))
            if w != self.weight:
                self.weight = w
                self.update()

    def paintEvent(self, _):
        p = QtGui.QPainter(self)
        p.setRenderHint(QtGui.QPainter.Antialiasing)
        W, H = self.width(), self.height()
        active = self.weight > 0.001
        acc = QtGui.QColor(C_SIDE.get(self.ui.side))
        p.setPen(QtGui.QPen(acc if active else QtGui.QColor('#5a5e66' if self.hover else '#3c3f45'), 2))
        p.setBrush(QtGui.QColor('#383b41' if self.hover else C_PANEL))
        p.drawRoundedRect(QtCore.QRectF(1, 1, W - 2, H - 2), 7, 7)
        art = QtCore.QRectF(4, 3, W - 8, W - 8)
        if self.plus:
            p.setPen(QtGui.QPen(QtGui.QColor(C_DIM), max(2, W * 0.05), QtCore.Qt.SolidLine, QtCore.Qt.RoundCap))
            c, r = art.center(), W * 0.15
            p.drawLine(QtCore.QPointF(c.x() - r, c.y()), QtCore.QPointF(c.x() + r, c.y()))
            p.drawLine(QtCore.QPointF(c.x(), c.y() - r), QtCore.QPointF(c.x(), c.y() + r))
        else:
            paint_hand(p, art, self.state, self.ui.side, small=True)
        f = p.font()
        f.setPixelSize(max(9, int(W * 0.17)))
        p.setFont(f)
        p.setPen(QtGui.QColor(C_TEXT))
        p.drawText(QtCore.QRectF(2, W - 6, W - 4, H - W - 2), QtCore.Qt.AlignHCenter | QtCore.Qt.AlignTop, self.title)
        if self.pose:
            bar = QtCore.QRectF(7, H - 6, W - 14, 3)
            p.setPen(QtCore.Qt.NoPen)
            p.setBrush(QtGui.QColor(C_TRACK))
            p.drawRoundedRect(bar, 1.5, 1.5)
            p.setBrush(acc)
            p.drawRoundedRect(QtCore.QRectF(bar.x(), bar.y(), bar.width() * self.weight, 3), 1.5, 1.5)

    def enterEvent(self, _):
        self.hover = True
        self.update()

    def leaveEvent(self, _):
        self.hover = False
        self.update()

    def mousePressEvent(self, e):
        if e.button() == QtCore.Qt.RightButton and self.pose:
            self.ui.pose_menu(self.pose, _gpos(e))
            return
        self._press = (_epos(e), self.weight, False)
        if self.pose:
            cmds.undoInfo(openChunk=True)

    def mouseMoveEvent(self, e):
        if self._press and self.pose:
            start, w0, _ = self._press
            d = _epos(e).x() - start.x()
            if abs(d) > 3:
                self.ui.pose_weight(self.pose, max(0.0, min(1.0, w0 + d / float(self.width()))))
                self._press = (start, w0, True)

    def mouseReleaseEvent(self, e):
        if not self._press:
            return
        _, w0, dragged = self._press
        self._press = None
        if self.pose:
            cmds.undoInfo(closeChunk=True)
            if dragged:
                self.ui.touched(self.ui.pose_plugs())
            else:
                self.ui.pose_click(self.pose, bool(e.modifiers() & QtCore.Qt.ShiftModifier))
        elif self.on_click:
            self.on_click()


class PoseCard(HandCard):
    """姿势卡片 (底部细条 = 这个姿势的权重). 单击 = 切到这个姿势 (再点一次 = 关掉);
    左右拖 = 调权重 (其他姿势按比例让出, 总和不超过 100%)."""

    def __init__(self, ui, name, values, size):
        super().__init__(ui, name, preset_state(values, ui.fingers()), size,
                         tip='%s\nClick: switch to this pose (click again: off)\n'
                             'Drag left/right: pose amount\nRight-click: key / apply to sliders / update / delete' % name)
        self.values = values
        self.pose = _pw_attr(name)      # HandCard 用它画底部的细条

    def sync(self):
        m = self.ui.master()
        if m and cmds.attributeQuery(self.pose, node=m, exists=True):
            w = cmds.getAttr('%s.%s' % (m, self.pose))
            if w != self.weight:
                self.weight = w
                self.update()

    def mousePressEvent(self, e):
        if e.button() == QtCore.Qt.RightButton:
            self.ui.lib_menu(self.title, _gpos(e))
            return
        self._press = (_epos(e), self.weight, False)
        cmds.undoInfo(openChunk=True)

    def mouseMoveEvent(self, e):
        if self._press:
            pos0, w0, _ = self._press
            d = _epos(e).x() - pos0.x()
            if abs(d) > 3:
                self.ui.pose_weight(self.title, max(0.0, min(1.0, w0 + d / float(self.width()))))
                self._press = (pos0, w0, True)

    def mouseReleaseEvent(self, e):
        if not self._press:
            return
        _, _, dragged = self._press
        self._press = None
        cmds.undoInfo(closeChunk=True)
        if dragged:
            self.ui.touched(self.ui.hand_plugs())
        else:
            self.ui.lib_click(self.title)


def _seg_button(labels, h, w, on_pick):
    box = QtWidgets.QWidget()
    lay = QtWidgets.QHBoxLayout(box)
    lay.setContentsMargins(0, 0, 0, 0)
    lay.setSpacing(0)
    grp = QtWidgets.QButtonGroup(box)
    box.btns = []
    for i, t in enumerate(labels):
        b = QtWidgets.QPushButton(t)
        b.setCheckable(True)
        b.setFixedSize(w, h)
        b.setObjectName('seg')
        grp.addButton(b, i)
        lay.addWidget(b)
        box.btns.append(b)
        b.clicked.connect(lambda _=False, i=i: on_pick(i))
    return box


class FingerMasterWindow(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setObjectName(OBJ_NAME)
        self.setWindowTitle('Finger Master')
        self.setWindowFlags(QtCore.Qt.Window)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose)
        self.scale = cmds.optionVar(q=SCALE_VAR) if cmds.optionVar(exists=SCALE_VAR) else 1.0
        self.side = next((s for s in SIDES if cmds.objExists(_p(s) + 'rig_grp')), 'l')
        self.cur_finger = None
        self.bars, self.fbars, self.cards = [], [], []
        self.ik_seg = self.hand = self.autokey_btn = None
        self._tw = None
        self._cb_ids, self._pending, self._key_dirty = [], False, False
        root = QtWidgets.QVBoxLayout(self)
        root.setContentsMargins(0, 0, 0, 0)
        self.holder = QtWidgets.QWidget()
        root.addWidget(self.holder)
        self.build()

    # ---- helpers ----
    def px(self, v):
        return int(round(v * self.scale))

    def master(self):
        m = _p(self.side) + 'hand_ctl'
        return m if cmds.objExists(m) else None

    def mirror(self):
        return 1 if _is_left(self.side) else -1

    def fingers(self):
        return [fd['name'] for fd in get_registry(self.side)['fingers'] if fd['name'] in GLYPH]

    def ik_fingers(self):
        m = self.master()
        if not m:
            return ()
        return tuple(n for n in self.fingers() if cmds.attributeQuery(_low(n) + 'IK', node=m, exists=True)
                     and cmds.getAttr('%s.%sIK' % (m, _low(n))) > 0.5)

    def poses(self):
        m = self.master()
        return [a for a in (cmds.listAttr(m, k=True, ud=True) or []) if a.startswith('pose_')] if m else []

    def pose_plugs(self):
        return ['%s.%s' % (self.master(), a) for a in self.poses()]

    def flash(self, msg, error=False):
        if getattr(self, 'status', None):
            self.status.setText('<span style="color:%s">%s</span>' % ('#e07a5f' if error else C_IK, msg))
            QtCore.QTimer.singleShot(12000 if error else 4000, lambda: self.status and self._restore_status())

    def _restore_status(self):
        try:
            self.status.setText(self.status_text())
        except RuntimeError:
            pass

    def act(self, fn, *args, rebuild=True, **kw):
        r = _run(fn, *args, **kw)
        if rebuild:
            QtCore.QTimer.singleShot(0, self.build)
        return r

    # ---- 关键帧 ----
    def autokey_on(self):
        return bool(cmds.autoKeyframe(q=True, state=True))

    def toggle_autokey(self):
        cmds.autoKeyframe(state=not self.autokey_on())
        self.poll()

    def hand_plugs(self):
        """Master 上所有可 K 帧的属性 (整手 + 单指 + IK + 姿势)."""
        m = self.master()
        return ['%s.%s' % (m, a) for a in cmds.listAttr(m, k=True, ud=True) or []
                if not cmds.getAttr('%s.%s' % (m, a), lock=True)] if m else []

    def slider_attrs(self):
        """整手 + 单指的滑条 (不含 IK 和姿势)."""
        return slider_attrs(self.side)

    def touched(self, plugs):
        """面板里有改动时 (Auto Key 打开): 整只手一起 K 帧, 每个关键帧都是完整的手型,
        之后再改单指也不会让之前的关键帧变样."""
        plugs = [p for p in plugs if p]
        if plugs and self.autokey_on():
            m = self.master()
            extra = [p for p in plugs if m and not p.startswith(m + '.')]   # IK 方块等
            cmds.setKeyframe(self.hand_plugs() + extra)
            self._key_dirty = True
            self.request_poll()

    def key_all(self):
        plugs = self.hand_plugs()
        if not plugs:
            return
        cmds.setKeyframe(plugs)
        self.flash('Keyed the whole hand (%d attributes) at frame %d' % (len(plugs), cmds.currentTime(q=True)))

    def tween(self, targets, ms=220):
        """平滑过渡到目标值 (看得见变化), 结束时按 Auto Key 记帧."""
        if self._tw:
            self._tw[0].stop()
        targets = {p: v for p, v in targets.items() if p and cmds.objExists(p.split('.')[0])}
        start = {p: cmds.getAttr(p) for p in targets}
        steps = max(1, ms // 25)
        timer = QtCore.QTimer(self)
        state = {'i': 0}
        cmds.undoInfo(openChunk=True)

        def step():
            state['i'] += 1
            t = state['i'] / float(steps)
            t = t * t * (3 - 2 * t)
            for p, v in targets.items():
                try:
                    cmds.setAttr(p, start[p] + (v - start[p]) * t)
                except RuntimeError:
                    pass
            self.request_poll()
            if state['i'] >= steps:
                timer.stop()
                self._tw = None
                self.touched(list(targets))
                cmds.undoInfo(closeChunk=True)

        timer.timeout.connect(step)
        self._tw = (timer,)
        timer.start(25)

    # ---- layout ----
    def build(self):
        old = self.holder.layout()
        if old:
            QtWidgets.QWidget().setLayout(old)
        self.bars, self.fbars, self.cards = [], [], []
        self.ik_seg = self.hand = None
        px = self.px
        acc = C_SIDE.get(self.side, C_HI)
        self.setStyleSheet('''
            QWidget#%(o)s { background:%(bg)s; }
            QWidget { color:%(tx)s; font-size:%(fs)dpx; }
            QPushButton { background:#3d4046; border:none; border-radius:%(r)dpx; padding:0 %(p)dpx; }
            QPushButton:hover { background:#4a4e55; }
            QPushButton:disabled { color:#666; background:#323438; }
            QPushButton#seg { border-radius:0; background:#3a3d42; padding:0; }
            QPushButton#seg:checked { background:%(acc)s; color:white; }
            QPushButton#build { background:#3f7a52; font-weight:bold; }
            QPushButton#build:hover { background:#4a8d5f; }
            QPushButton#danger { background:#6b3f39; }
            QPushButton#autokey:checked { background:%(key)s; color:white; }
            QLabel#title { color:%(dim)s; font-weight:bold; font-size:%(fs2)dpx; }
            QLabel#hint { color:%(dim)s; font-size:%(fs2)dpx; }
            QTabBar::tab { background:#3a3d42; padding:%(tp)dpx 0; margin-right:1px; min-width:%(tw)dpx;
                           border-top-left-radius:%(r)dpx; border-top-right-radius:%(r)dpx; }
            QTabBar::tab:selected { background:%(acc)s; color:white; }
            QFrame#box { background:%(pn)s; border-radius:%(r)dpx; }
        ''' % dict(o=OBJ_NAME, bg=C_BG, tx=C_TEXT, dim=C_DIM, acc=acc, key=C_KEY, pn=C_PANEL,
                   fs=px(12), fs2=px(11), r=px(4), p=px(8), tp=px(4), tw=px(44)))

        outer = QtWidgets.QVBoxLayout(self.holder)
        outer.setContentsMargins(px(8), px(8), px(8), px(8))
        outer.setSpacing(px(5))
        H = px(26)

        # 顶栏
        top = QtWidgets.QHBoxLayout()
        top.setSpacing(px(4))
        sides = _seg_button(['L', 'R'], H, px(28), lambda i: self.set_side('l' if i == 0 else 'r'))
        sides.btns[0 if _is_left(self.side) else 1].setChecked(True)
        top.addWidget(sides)
        b = QtWidgets.QPushButton('Build')
        b.setObjectName('build')
        b.setFixedHeight(H)
        b.setToolTip('Select the root joint (or root control) of each finger — both hands at once is fine —\n'
                     'then click. Chains, sides and finger names are detected automatically.')
        b.clicked.connect(self.build_clicked)
        top.addWidget(b, 1)
        for label, tip, fn, en, name in (
                ('Rebuild', 'Rebuild this side (saved poses are lost)', lambda: self.act(rebuild, self.side),
                 bool(get_registry(self.side)['fingers']), ''),
                ('Remove', 'Remove from this side. The original rig is restored.',
                 lambda: self.act(remove, self.side), bool(self.master()), 'danger')):
            bb = QtWidgets.QPushButton(label)
            bb.setObjectName(name)
            bb.setFixedHeight(H)
            bb.setToolTip(tip)
            bb.setEnabled(en)
            bb.clicked.connect(fn)
            top.addWidget(bb)
        outer.addLayout(top)
        top2 = QtWidgets.QHBoxLayout()
        top2.setSpacing(px(4))
        self.autokey_btn = QtWidgets.QPushButton('Auto Key')
        self.autokey_btn.setObjectName('autokey')
        self.autokey_btn.setCheckable(True)
        self.autokey_btn.setChecked(self.autokey_on())
        self.autokey_btn.setFixedHeight(H)
        self.autokey_btn.setToolTip("Same as Maya's auto key button.\nOn: every change made in this panel is keyed.")
        self.autokey_btn.clicked.connect(self.toggle_autokey)
        top2.addWidget(self.autokey_btn)
        kb = QtWidgets.QPushButton('Key')
        kb.setFixedHeight(H)
        kb.setToolTip('Key the whole hand (all master attributes) at the current frame')
        kb.clicked.connect(self.key_all)
        kb.setEnabled(bool(self.master()))
        top2.addWidget(kb)
        cb = QtWidgets.QPushButton('Check')
        cb.setFixedHeight(H)
        cb.setToolTip('Test every finger joint: does it follow the master?\n'
                      'Fixes what it can, and prints a report in the Script Editor.')
        cb.clicked.connect(self.check_clicked)
        cb.setEnabled(bool(self.master()))
        top2.addWidget(cb)
        bk = QtWidgets.QPushButton('Bake')
        bk.setFixedHeight(H)
        bk.setToolTip('Bake the animation onto the original FK controls\n(then remove Finger Master or keep it zeroed)')
        bk.clicked.connect(self.bake_clicked)
        bk.setEnabled(bool(self.master()))
        top2.addWidget(bk)
        top2.addStretch(1)
        for label, tip, d in (('A-', 'Smaller UI', -0.1), ('A+', 'Larger UI', 0.1)):
            bb = QtWidgets.QPushButton(label)
            bb.setFixedSize(px(32), H)
            bb.setStyleSheet('padding:0')
            bb.setToolTip(tip)
            bb.clicked.connect(lambda _=False, d=d: self.set_scale(d))
            top2.addWidget(bb)
        outer.addLayout(top2)
        self.status = QtWidgets.QLabel(self.status_text())
        self.status.setObjectName('hint')
        outer.addWidget(self.status)

        m = self.master()
        if not m:
            empty = QtWidgets.QLabel('Select the root joint of each finger,\nthen click  Build')
            empty.setAlignment(QtCore.Qt.AlignCenter)
            empty.setObjectName('hint')
            empty.setMinimumHeight(px(120))
            outer.addWidget(empty, 1)
            self._remove_callbacks()
            return

        W = px(330)
        card = px(54)

        # 手 (小)
        self.hand = HandView(self, W, px(140))
        self.hand.fingerPicked.connect(self.pick_finger)
        outer.addWidget(self.hand)

        # 预设
        outer.addWidget(self.title('PRESETS', 'Click to apply (replaces the hand sliders)'))
        g = QtWidgets.QHBoxLayout()
        g.setSpacing(px(4))
        for name, vals in PRESETS:
            g.addWidget(HandCard(self, name, preset_state(vals, self.fingers()), card,
                                 on_click=lambda v=vals: self.apply_preset(v),
                                 tip='Apply %s (whole hand: finger sliders and poses reset to 0)' % name))
        g.addStretch(1)
        outer.addLayout(g)

        # 整手: 两列
        self.hand_title = self.title('HAND')
        outer.addWidget(self.hand_title)
        hg = QtWidgets.QGridLayout()
        hg.setHorizontalSpacing(px(8))
        hg.setVerticalSpacing(px(3))
        bh = px(21)
        for i, (a, label, tip) in enumerate(HAND_ATTRS):
            bar = AttrBar(self, a, label, tip, h=bh)
            self.bars.append(bar)
            hg.addWidget(bar, i // 2, i % 2)
        outer.addLayout(hg)

        # 单指
        outer.addWidget(self.title('FINGER', 'Click a finger in the picture or a tab'))
        self.tabs = QtWidgets.QTabBar()
        self.tabs.setExpanding(True)
        self.tabs.setDrawBase(False)
        names = self.fingers()
        for n in names:
            self.tabs.addTab(n)
        if self.cur_finger not in names:
            self.cur_finger = 'Index' if 'Index' in names else (names[0] if names else None)
        if self.cur_finger:
            self.tabs.setCurrentIndex(names.index(self.cur_finger))
        self.tabs.currentChanged.connect(lambda i: self.pick_finger(names[i]))
        outer.addWidget(self.tabs)
        self.finger_box = QtWidgets.QFrame()
        self.finger_box.setObjectName('box')
        outer.addWidget(self.finger_box)

        # 姿势
        outer.addWidget(self.title('POSES', 'Your own presets. Save: stores every hand / finger slider.\n'
                                            'Click a pose: the whole hand switches to it (like a preset)\n'
                                            'Drag left/right on a pose: mix from the current hand  ·  Right-click: key / update / delete'))
        pg = QtWidgets.QGridLayout()
        pg.setSpacing(px(4))
        per_row = max(1, (W + px(4)) // (card + px(4)))
        poses = pose_library(self.side)
        for i, ps in enumerate(poses):
            c = PoseCard(self, ps['name'], ps['values'], card)
            self.cards.append(c)
            pg.addWidget(c, i // per_row, i % per_row)
        plus = HandCard(self, 'Save', {}, card, on_click=self.save_pose, plus=True,
                        tip='Save all current hand / finger slider values as a new pose')
        pg.addWidget(plus, len(poses) // per_row, len(poses) % per_row)
        pg.setColumnStretch(per_row, 1)
        outer.addLayout(pg)
        outer.addStretch(1)
        self._install_callbacks()
        self.fill_finger()
        self.poll()

    def title(self, t, tip=''):
        l = QtWidgets.QLabel(t + ('  ⓘ' if tip else ''))
        l.setObjectName('title')
        l.setToolTip(tip)
        return l

    def fill_finger(self):
        box = self.finger_box
        old = box.layout()
        if old:
            QtWidgets.QWidget().setLayout(old)
        self.fbars, self.ik_seg = [], None
        n = self.cur_finger
        if not n:
            return
        px = self.px
        low = _low(n)
        lay = QtWidgets.QVBoxLayout(box)
        lay.setContentsMargins(px(6), px(6), px(6), px(6))
        lay.setSpacing(px(3))
        bh = px(21)
        total_tip = ('\nLight bar + number: what the finger is actually doing now\n'
                     '(presets, hand sliders, poses, IK and FK all included)\n'
                     'Thin bar: this finger\'s own slider')
        for suf, label, tip in (('Curl', 'Curl', 'Bend the whole finger' + total_tip),
                                ('Spread', 'Spread', 'Move the finger sideways' + total_tip),
                                ('Twist', 'Twist', 'Roll the finger around its length' + total_tip)):
            bar = AttrBar(self, low + suf, label, tip, h=bh)
            self.fbars.append(bar)
            lay.addWidget(bar)
        m = self.master()
        if cmds.attributeQuery(low + 'Base', node=m, exists=True):
            row = QtWidgets.QHBoxLayout()
            row.setSpacing(px(4))
            for suf, label, tip in (('Base', 'Base', 'Bend only the base joint of this finger'),
                                    ('Mid', 'Mid', 'Bend only the middle joint of this finger'),
                                    ('Tip', 'Tip', 'Bend only the tip joint of this finger')):
                bar = AttrBar(self, low + suf, label, tip + '\nNegative = bend backwards' + total_tip,
                              h=bh, lw=px(38))
                bar.setMinimumWidth(px(64))
                self.fbars.append(bar)
                row.addWidget(bar)
            lay.addLayout(row)
        else:
            hint = QtWidgets.QLabel('Rebuild to get per-joint sliders (Base / Mid / Tip)')
            hint.setObjectName('hint')
            lay.addWidget(hint)
        if n == 'Thumb':
            # 拇指的抓握轴可以手动选 (不同项目骨骼朝向不同); 其他手指自动判断
            fd = {f['name']: f for f in get_registry(self.side)['fingers']}.get(n, {})
            cur = fd.get('curlAxis') or 'auto'
            got = finger_axes(self.side, n)[0]
            row = QtWidgets.QHBoxLayout()
            row.setSpacing(px(4))
            lab = QtWidgets.QLabel('Grasp')
            lab.setFixedWidth(int(bh * 2.3) - 10)
            lab.setAlignment(QtCore.Qt.AlignRight | QtCore.Qt.AlignVCenter)
            lab.setToolTip('Which axis curls the thumb (grasp). Auto detects it;\n'
                           'pick X / Y / Z if your rig needs another axis. The side is rebuilt,\n'
                           'saved poses and keys are kept.')
            row.addWidget(lab)
            row.addSpacing(px(6))
            labels = ['Auto', 'X', 'Y', 'Z']
            seg = _seg_button(labels, px(22), px(34),
                              lambda i: self.set_thumb_axis(['auto', 'x', 'y', 'z'][i]))
            seg.btns[['auto', 'x', 'y', 'z'].index(cur)].setChecked(True)
            seg.setToolTip(lab.toolTip())
            row.addWidget(seg)
            fl = QtWidgets.QPushButton('Flip')
            fl.setObjectName('seg')
            fl.setCheckable(True)
            fl.setChecked(bool(fd.get('curlFlip')))
            fl.setFixedSize(px(40), px(22))
            fl.setToolTip('Reverse the grasp direction')
            fl.clicked.connect(lambda on: self.act(set_finger_axis, self.side, n, 'keep', bool(on)))
            row.addWidget(fl)
            info = QtWidgets.QLabel('= %s' % (got or '?').upper())
            info.setObjectName('hint')
            info.setToolTip('Axis currently used')
            row.addWidget(info)
            row.addStretch(1)
            lay.addLayout(row)
        if cmds.attributeQuery(low + 'IK', node=m, exists=True):
            row = QtWidgets.QHBoxLayout()
            row.setSpacing(px(4))
            lab = QtWidgets.QLabel('Mode')
            lab.setFixedWidth(int(bh * 2.3) - 10)
            lab.setAlignment(QtCore.Qt.AlignRight | QtCore.Qt.AlignVCenter)
            row.addWidget(lab)
            row.addSpacing(px(6))
            seg = _seg_button(['FK', 'IK'], px(22), px(36), lambda i: self.set_ik(n, i == 1))
            seg.btns[1 if cmds.getAttr('%s.%sIK' % (m, low)) > 0.5 else 0].setChecked(True)
            seg.setToolTip('IK pins the fingertip to the green cube.\n'
                           'Move the cube: place the tip · Rotate it: aim the tip · Ball: knuckle direction.\n'
                           'Switching to IK snaps the cube to the finger first, so nothing jumps.')
            self.ik_seg = seg
            row.addWidget(seg)
            sel = QtWidgets.QPushButton('Select cube')
            sel.setFixedHeight(px(22))
            sel.setToolTip('Select the green IK cube of this finger')
            sel.clicked.connect(lambda: cmds.select('%s%s_ik_ctl' % (_p(self.side), n)))
            row.addWidget(sel)
            row.addStretch(1)
            lay.addLayout(row)
            bar = AttrBar(self, low + 'IK', 'Blend', 'FK ↔ IK blend. Key it to animate the switch.',
                          color=C_IK, h=bh)
            self.fbars.append(bar)
            lay.addWidget(bar)
        self.poll()

    # ---- actions ----
    def status_text(self):
        parts = []
        for s in SIDES:
            fs = get_registry(s)['fingers']
            if fs:
                parts.append('<b>%s</b> %s%s' % (s.upper(), ' '.join('%s%d' % (ABBR.get(f['name'], f['name'][:2]),
                                                                           len(f['ctls'])) for f in fs),
                                                 '' if cmds.objExists(_p(s) + 'rig_grp') else ' (not built)'))
        return '&nbsp;&nbsp;&nbsp;'.join(parts) or 'Nothing built yet'

    def report_text(self):
        parts, bad = [], False
        for s in SIDES:
            r = LAST_REPORT.get(s)
            if r:
                bad = bad or r['ok'] < r['checked']
                parts.append('%s %d/%d joints follow' % (s.upper(), r['ok'], r['checked']))
        if not parts:
            return None, False
        msg = '  ·  '.join(parts)
        return (msg + '  — see Script Editor' if bad else msg), bad

    def set_thumb_axis(self, axis):
        self.act(set_finger_axis, self.side, 'Thumb', axis)
        QtCore.QTimer.singleShot(80, lambda: self.flash('Thumb grasp axis: %s' % (
            (finger_axes(self.side, 'Thumb')[0] or '?').upper())))

    def build_clicked(self):
        LAST_REPORT.clear()
        self.act(build_from_selection)
        msg, bad = self.report_text()
        if msg:
            QtCore.QTimer.singleShot(60, lambda: self.flash(msg, error=bad))

    def bake_clicked(self):
        d = QtWidgets.QDialog(self)
        d.setWindowTitle('Bake to FK controls')
        lay = QtWidgets.QFormLayout(d)
        s0 = QtWidgets.QSpinBox()
        s1 = QtWidgets.QSpinBox()
        for sp, v in ((s0, cmds.playbackOptions(q=True, min=True)), (s1, cmds.playbackOptions(q=True, max=True))):
            sp.setRange(-100000, 100000)
            sp.setValue(int(v))
        row = QtWidgets.QHBoxLayout()
        row.addWidget(s0)
        row.addWidget(QtWidgets.QLabel('to'))
        row.addWidget(s1)
        lay.addRow('Frames', row)
        every = QtWidgets.QRadioButton('Every frame')
        keyed = QtWidgets.QRadioButton('Keyed frames only (cleaner curves)')
        every.setChecked(True)
        lay.addRow('Keys', every)
        lay.addRow('', keyed)
        rm = QtWidgets.QCheckBox('Remove Finger Master after baking')
        rm.setChecked(True)
        rm.setToolTip('Off: Finger Master stays (keys cleared, all 0) so you can keep using it on top')
        lay.addRow('', rm)
        both = QtWidgets.QCheckBox('Both hands')
        both.setChecked(all(cmds.objExists(_p(s) + 'hand_ctl') for s in SIDES))
        both.setEnabled(sum(cmds.objExists(_p(s) + 'hand_ctl') for s in SIDES) > 1)
        lay.addRow('', both)
        bb = QtWidgets.QDialogButtonBox(QtWidgets.QDialogButtonBox.Ok | QtWidgets.QDialogButtonBox.Cancel)
        bb.button(QtWidgets.QDialogButtonBox.Ok).setText('Bake')
        bb.accepted.connect(d.accept)
        bb.rejected.connect(d.reject)
        lay.addRow(bb)
        if not d.exec_():
            return
        sides = [s for s in SIDES if cmds.objExists(_p(s) + 'hand_ctl')] if both.isChecked() else [self.side]
        args = (s0.value(), s1.value(), every.isChecked(), rm.isChecked())
        cmds.waitCursor(state=True)
        try:
            done = [self.act(bake, s, *args, rebuild=False) for s in sides]
        finally:
            cmds.waitCursor(state=False)
        self.build()
        if all(n for n in done):
            self.flash('Baked %s: frames %d-%d onto the FK controls%s' % (
                '+'.join(s.upper() for s in sides), args[0], args[1],
                ', Finger Master removed' if args[3] else ''))

    def check_clicked(self):
        _run(verify, self.side, True)
        msg, bad = self.report_text()
        if msg:
            self.flash(msg, error=bad)

    def set_side(self, s):
        self.side = s
        self.build()

    def set_scale(self, d):
        self.scale = max(0.7, min(2.0, round(self.scale + d, 2)))
        cmds.optionVar(fv=(SCALE_VAR, self.scale))
        self.build()
        QtCore.QTimer.singleShot(0, self.adjustSize)

    def pick_finger(self, n):
        if n == self.cur_finger:
            return
        self.cur_finger = n
        names = self.fingers()
        if getattr(self, 'tabs', None) and n in names and self.tabs.currentIndex() != names.index(n):
            self.tabs.blockSignals(True)
            self.tabs.setCurrentIndex(names.index(n))
            self.tabs.blockSignals(False)
        self.fill_finger()
        if self.hand:
            self.hand.update()

    def set_ik(self, n, on):
        m = self.master()
        low = _low(n)
        P = _p(self.side)

        def go():
            if on:
                snap_ik_to_fk(self.side, n)
                cmds.setAttr('%s.%sIK' % (m, low), 1)
                cmds.select(P + n + '_ik_ctl')
            else:
                cmds.setAttr('%s.%sIK' % (m, low), 0)
            self.touched(['%s.%sIK' % (m, low)] + (['%s%s_ik_ctl.%s' % (P, n, a) for a in ('t', 'r')] +
                                                   ['%s%s_pv_ctl.t' % (P, n)] if on else []))
        _run(go)
        self.poll()

    def apply_preset(self, values):
        """预设 = 完整手型: 单指滑条和姿势都归零, 不受之前的单指调整影响."""
        m = self.master()
        t = {'%s.%s' % (m, a): float(values.get(a, 0)) for a in self.slider_attrs()}
        t.update({'%s.%s' % (m, a): 0.0 for a in self.poses()})
        t.update({'%s.%s' % (m, _pw_attr(n)): 0.0 for n in pose_weights(self.side)})
        self.tween(t)

    def reset_all(self):
        m = self.master()
        self.tween({'%s.%s' % (m, a): 0.0 for a in cmds.listAttr(m, k=True, ud=True) or []
                    if not a.endswith('IK') and not cmds.getAttr('%s.%s' % (m, a), lock=True)})

    def save_pose(self):
        n = len(pose_library(self.side)) + 1
        name, ok = QtWidgets.QInputDialog.getText(self, 'Save pose', 'Pose name:', text='pose%d' % n)
        if not (ok and name.strip()):
            return
        name = name.strip()

        def go():
            fk = save_hand_pose(self.side, name)
            set_pose_weight(self.side, name, 1.0, exclusive=True)   # 存完 = 这个姿势 100% (手型不变)
            return fk
        fk = self.act(go)
        if fk is not None:
            self.touched(self.hand_plugs())
            msg = 'Saved pose "%s" (100%%)' % name
            if fk:
                msg += ' - FK control rotations on %d controls are not part of poses' % fk
            QtCore.QTimer.singleShot(60, lambda: self.flash(msg, error=bool(fk)))

    def lib_click(self, name):
        """单击: 平滑切到这个姿势 100% (其他 0). 已经是 100% 时再点 = 关掉."""
        m = self.master()
        ws = pose_weights(self.side)
        if ws.get(name, 0) > 0.99 and all(v < 0.01 for k, v in ws.items() if k != name):
            self.tween({'%s.%s' % (m, _pw_attr(name)): 0.0}, ms=300)
            return
        t = {'%s.%s' % (m, _pw_attr(k)): (1.0 if k == name else 0.0) for k in ws}
        t.update({'%s.%s' % (m, a): 0.0 for a in self.poses()})
        self.tween(t, ms=300)

    def pose_weight(self, name, w):
        set_pose_weight(self.side, name, w)
        self.request_poll()

    def take_over(self):
        """开始调滑条 / 拖手时: 如果姿势开着, 先把当前手型写回滑条 (手型不跳)."""
        ws = pose_weights(self.side)
        if sum(ws.values()) > 0.001:
            bake_poses(self.side)
            self.request_poll()

    def lib_menu(self, name, gpos):
        menu = QtWidgets.QMenu(self)
        menu.addAction('Key whole hand', lambda: cmds.setKeyframe(self.hand_plugs()))
        menu.addAction('Apply to sliders (poses -> 0%)', lambda: (_run(bake_poses, self.side), self.request_poll()))
        menu.addAction('Update with current hand', lambda: self.act(save_hand_pose, self.side, name, True))
        menu.addSeparator()
        menu.addAction('Delete pose', lambda: self.act(delete_hand_pose, self.side, name))
        menu.exec_(gpos)

    def finger_menu(self, n, gpos):
        menu = QtWidgets.QMenu(self)
        if n == 'Palm':
            menu.addAction('Reset hand', self.reset_all)
            menu.addAction('Select master control', lambda: cmds.select(self.master()))
        else:
            fd = {f['name']: f for f in get_registry(self.side)['fingers']}.get(n)
            menu.addAction('Select FK controls', lambda: cmds.select([c for c in fd['ctls'] if cmds.objExists(c)]))
            if n in self.ik_fingers():
                menu.addAction('Switch to FK', lambda: self.set_ik(n, False))
            else:
                menu.addAction('Switch to IK', lambda: self.set_ik(n, True))
        menu.exec_(gpos)

    def poll(self):
        if not self.isVisible():
            return
        try:
            if not self.master():
                return
            for b in self.bars + self.fbars:
                b.sync()
            for c in self.cards:
                c.sync()

            st = live_state(self.side)
            if self.hand and st != self.hand.state:
                self.hand.state = st
                self.hand.update()
            if self.cur_finger and self.fbars:
                tot = finger_totals(self.side, self.cur_finger, st)
                low = _low(self.cur_finger)
                for b in self.fbars:
                    suf = b.attr[len(low):]
                    if suf in tot:
                        b.set_ghost(tot[suf])
            if self.ik_seg and self.cur_finger:
                m, low = self.master(), _low(self.cur_finger)
                if cmds.attributeQuery(low + 'IK', node=m, exists=True):
                    on = cmds.getAttr('%s.%sIK' % (m, low)) > 0.5
                    if self.ik_seg.btns[1].isChecked() != on:
                        self.ik_seg.btns[1 if on else 0].setChecked(True)
        except RuntimeError:
            pass

    # ---- 有变化才刷新 (不轮询, 不在 Script Editor 刷屏) ----
    def request_poll(self, *_):
        if not self._pending:
            self._pending = True
            QtCore.QTimer.singleShot(30, self._do_poll)

    def _do_poll(self):
        self._pending = False
        self.poll()
        self._key_dirty = False

    def sync_autokey(self):
        try:
            if self.autokey_btn and self.autokey_btn.isChecked() != self.autokey_on():
                self.autokey_btn.setChecked(self.autokey_on())
        except RuntimeError:
            pass

    def enterEvent(self, e):
        self.sync_autokey()
        self.request_poll()

    def _remove_callbacks(self):
        if self._cb_ids:
            try:
                om.MMessage.removeCallbacks(self._cb_ids)
            except RuntimeError:
                pass
        self._cb_ids = []

    def _install_callbacks(self):
        """Master / 手指控制器 / IK 方块的属性改变、换帧、撤销重做时才刷新面板."""
        self._remove_callbacks()
        m = self.master()
        if not m:
            return
        P = _p(self.side)
        nodes = [m] + (cmds.ls(P + '*_ik_ctl', P + '*_pv_ctl', type='transform') or [])
        nodes += [c for fd in get_registry(self.side)['fingers'] for c in fd['ctls'] if cmds.objExists(c)]
        cb = self.request_poll
        for n in nodes:
            try:
                sl = om.MSelectionList()
                sl.add(n)
                self._cb_ids.append(om.MNodeMessage.addAttributeChangedCallback(sl.getDependNode(0),
                                                                                lambda *a: cb()))
            except RuntimeError:
                pass
        def keyed_changed(*_):
            self._key_dirty = True
            cb()
        for ev in ('timeChanged', 'Undo', 'Redo'):
            self._cb_ids.append(om.MEventMessage.addEventCallback(ev, keyed_changed))

    def closeEvent(self, e):
        self._remove_callbacks()
        global _WIN
        _WIN = None
        super().closeEvent(e)


_WIN = None


def open_example():
    """打开安装包附带的示例场景 (会先询问是否保存当前场景)."""
    import os
    p = os.path.join(cmds.internalVar(userAppDir=True), 'fingerMaster', 'test_scene_clean.ma').replace('\\', '/')
    if not os.path.isfile(p):
        cmds.warning('[fingerMaster] example scene not found: %s' % p)
        return
    mel.eval('saveChanges("file -f -o \\"%s\\"")' % p)


def uninstall_tool():
    """工具架右键菜单「Uninstall」: 删除工具架按钮、脚本和图标. 场景里已建立的 Master 不受影响."""
    import os
    if cmds.confirmDialog(t='Uninstall Finger Master',
                          m='Remove the shelf button, script and icon?\n'
                            '(Rigs already built in your scenes are not touched.)',
                          b=['Uninstall', 'Cancel'], db='Cancel', cb='Cancel', ds='Cancel') != 'Uninstall':
        return
    if _WIN:
        _WIN.close()
    top = mel.eval('$fmTmp = $gShelfTopLevel')
    for shelf in cmds.tabLayout(top, q=True, childArray=True) or []:
        for b in cmds.shelfLayout(shelf, q=True, childArray=True) or []:
            if cmds.objectTypeUI(b) == 'shelfButton' and cmds.shelfButton(b, q=True, docTag=True) == SHELF_TAG:
                cmds.deleteUI(b)
    mel.eval('saveAllShelves $gShelfTopLevel')
    removed = []
    for path in (os.path.join(cmds.internalVar(userScriptDir=True), 'fingerMaster.py'),
                 os.path.join(cmds.internalVar(userBitmapsDir=True), 'fingerMaster.png')):
        for p in (path, path + 'c'):
            if os.path.isfile(p):
                os.remove(p)
                removed.append(p)
    print('[fingerMaster] uninstalled: %s' % removed)
    cmds.inViewMessage(amg='Finger Master uninstalled', pos='midCenter', fade=True)


def ui():
    global _WIN
    main = _maya_main()
    for w in (main.findChildren(QtWidgets.QWidget, OBJ_NAME) if main else []):
        w.close()
    _WIN = FingerMasterWindow(main)
    _WIN.show()
    _WIN.adjustSize()
    return _WIN
