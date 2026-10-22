# -*- coding: utf-8 -*-
"""mayapy test_generic.py - 用完全不同结构/命名的绑定测试「登录控制器」流程."""
import os
import sys
import maya.standalone
maya.standalone.initialize()

import maya.cmds as cmds
import maya.api.OpenMaya as om

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(HERE))
import fingerMaster as fm

FINGERS = {
    'thumb': ((62, 139, 3), [(2.0, -0.8, 2.0), (1.8, -0.6, 1.4), (1.5, -0.4, 1.0)]),
    'index': ((69, 140, 3), [(3.5, -0.2, 0.3), (2.3, -0.2, 0.1), (1.8, -0.2, 0)]),
    'middle': ((69.5, 140.2, 1), [(3.8, -0.2, 0), (2.6, -0.2, 0), (2.0, -0.2, 0)]),
    'ring': ((69, 140, -1), [(3.5, -0.2, -0.2), (2.4, -0.2, -0.1), (1.9, -0.2, 0)]),
    'pinky': ((62, 139.8, -2), [(5.5, 0.1, -1.0), (2.8, -0.2, -0.3), (1.9, -0.2, -0.1), (1.5, -0.2, 0)]),
}
SLOT = {'thumb': 'Thumb', 'index': 'Index', 'middle': 'Middle', 'ring': 'Ring', 'pinky': 'Pinky'}


def joint_chain(S, name, base, vecs, parent):
    cmds.select(cl=True)
    p = om.MVector(base)
    pts = [p]
    for v in vecs:
        pts.append(pts[-1] + om.MVector(v))
    jn = []
    for i, q in enumerate(pts):
        n = '%s_%s_%02d_CTRL' % (S, name, i + 1) if i < len(vecs) else '%s_%s_end' % (S, name)
        jn.append(cmds.joint(n=n, p=tuple(q)))
    cmds.joint(jn[0], e=True, oj='xyz', sao='yup', ch=True, zso=True)
    cmds.setAttr(jn[-1] + '.jointOrient', 0, 0, 0)
    cmds.parent(jn[0], parent)
    return jn


def nested_curves(S, name, base, vecs, parent, sx=1):
    """offset 组 + 曲线控制器 层级嵌套 (没有约束)."""
    tmp = joint_chain('TMP', name, (base[0] * sx, base[1], base[2]),
                      [(v[0] * sx, v[1], v[2]) for v in vecs], parent)
    prev = parent
    for i in range(len(vecs)):
        grp = cmds.createNode('transform', n='%s_%s_%02d_GRP' % (S, name, i + 1), p=prev)
        cmds.xform(grp, ws=True, m=cmds.xform(tmp[i], q=True, ws=True, m=True))
        ctl = cmds.circle(n='%s_%s_%02d_CTRL' % (S, name, i + 1), nr=(1, 0, 0), r=0.6, ch=False)[0]
        cmds.parent(ctl, grp, r=True)
        prev = ctl
    end = cmds.spaceLocator(n='%s_%s_end' % (S, name))[0]
    cmds.parent(end, prev)
    cmds.xform(end, ws=True, t=cmds.xform(tmp[-1], q=True, ws=True, t=True))
    cmds.delete(tmp[0])


def build_mock():
    cmds.file(new=True, force=True)
    hand = cmds.createNode('transform', n='L_hand_CTRL')
    cmds.xform(hand, ws=True, t=(60, 140, 0))
    for f, (base, vecs) in FINGERS.items():
        if f == 'middle':
            nested_curves('L', f, base, vecs, hand)
        else:
            joint_chain('L', f, base, vecs, hand)
    rhand = cmds.createNode('transform', n='R_hand_CTRL')
    cmds.xform(rhand, ws=True, t=(-60, 140, 0))
    for f, (base, vecs) in FINGERS.items():
        if f == 'middle':
            nested_curves('R', f, base, vecs, rhand, sx=-1)
        else:
            # 在世界空间镜像 (mirrorJoint 以父物体为镜像中心)
            src = cmds.parent('L_%s_01_CTRL' % f, w=True)[0]
            m = cmds.mirrorJoint(src, mirrorYZ=True, mirrorBehavior=True, searchReplace=('L_', 'R_'))
            cmds.parent(src, 'L_hand_CTRL')
            cmds.parent(m[0], rhand)
    # 已有动画
    for S in 'LR':
        c = '%s_index_02_CTRL' % S
        cmds.setKeyframe(c, at='rz', t=1, v=0)
        cmds.setKeyframe(c, at='rz', t=10, v=-30)
    cmds.currentTime(1)


def wpos(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


def tips(S):
    return {f: wpos('%s_%s_end' % (S, f)) for f in FINGERS}


def snapshot(S):
    """记录所有登录控制器的本地数值和父物体."""
    out = {}
    for f, (_, vecs) in FINGERS.items():
        for i in range(len(vecs)):
            c = '%s_%s_%02d_CTRL' % (S, f, i + 1)
            vals = [round(v, 4) for a in ('t', 'r', 's') for v in cmds.getAttr(c + '.' + a)[0]]
            if cmds.objectType(c) == 'joint':
                vals += [round(v, 4) for v in cmds.getAttr(c + '.jointOrient')[0]]
            out[c] = (vals, cmds.listRelatives(c, p=True)[0], cmds.keyframe(c, q=True, kc=True))
    return out


results = []


def check(name, ok, info=''):
    results.append((name, ok))
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def reset(master):
    for a in cmds.listAttr(master, k=True) or []:
        cmds.setAttr('%s.%s' % (master, a), 0)


def run_side(side):
    S = side.upper()
    sx = 1 if side == 'l' else -1
    rest, before = PRE[side]
    master = 'fm_%s_hand_ctl' % side

    moved = max((tips(S)[f] - rest[f]).length() for f in FINGERS)
    check('%s rest unchanged' % side, moved < 1e-3, 'max %.5f' % moved)
    same = all(abs(a - b) < 1e-3 for c, (v, _, _) in before.items()
               for a, b in zip(v, snapshot(S)[c][0]))
    check('%s ctrl local values untouched' % side, same)

    cmds.setAttr(master + '.fist', 3)
    t = tips(S)
    for f in FINGERS:
        dy = t[f].y - rest[f].y
        if f == 'thumb':   # 拇指抓握 = 指尖靠近掌心 (中指根部), 不是往下
            mid = wpos('%s_middle_01_CTRL' % S)
            d0, d1 = (rest[f] - mid).length(), (t[f] - mid).length()
            check('%s fist thumb toward palm center' % side, d1 < d0 - 0.3, '%.2f -> %.2f' % (d0, d1))
        else:
            check('%s fist %s toward palm' % (side, f), dy < -0.5, 'dy=%.2f' % dy)
    reset(master)

    cmds.setAttr(master + '.spread', 10)
    t = tips(S)
    di, dp = t['index'].z - rest['index'].z, t['pinky'].z - rest['pinky'].z
    check('%s spread index +Z / pinky -Z' % side, di > 0.3 and dp < -0.3, '%.2f / %.2f' % (di, dp))
    reset(master)

    # 只弯中节: 应该绕中节自己的关节转, 根节不动
    cmds.setAttr(master + '.midCurl', 5)
    b1 = wpos('%s_middle_02_CTRL' % S)
    check('%s midCurl pivots at own knuckle' % side, (b1 - wpos('%s_middle_02_GRP' % S)).length() < 1e-3 and
          (tips(S)['middle'] - rest['middle']).length() > 0.5)
    reset(master)

    for f in FINGERS:
        cmds.setAttr('%s.%sIK' % (master, SLOT[f][0].lower() + SLOT[f][1:]), 1)
    moved = max((tips(S)[f] - rest[f]).length() for f in FINGERS)
    check('%s IK rest unchanged' % side, moved < 0.05, 'max %.4f' % moved)
    ikc = 'fm_%s_Middle_ik_ctl' % side
    cmds.move(-1.5 * sx, -2.5, 0, ikc, r=True, ws=True)
    d = (wpos('fm_%s_MiddleC_ik_jnt' % side) - wpos(ikc)).length()
    check('%s IK middle reaches target' % side, d < 0.05, '%.4f' % d)
    cmds.move(1.5 * sx, 2.5, 0, ikc, r=True, ws=True)
    reset(master)

    # 已有动画还在, 并叠加在 Master 上
    cmds.currentTime(10)
    a = tips(S)['index']
    cmds.setAttr(master + '.fist', 2)
    b = tips(S)['index']
    check('%s existing anim + master layer' % side,
          abs(cmds.getAttr('%s_index_02_CTRL.rz' % S) + 30) < 1e-3 and (a - b).length() > 0.3)
    reset(master)
    cmds.currentTime(1)

    cmds.setAttr('%s_ring_02_CTRL.rz' % S, -40)
    posed = tips(S)['ring']
    fm.store_pose(side, 'test')
    check('%s store pose keeps look' % side, (posed - tips(S)['ring']).length() < 1e-3)
    reset(master)
    back = (tips(S)['ring'] - rest['ring']).length()
    check('%s pose 0 = rest' % side, back < 1e-3, '%.5f' % back)
    return before


build_mock()
PRE = {s: (tips(s.upper()), snapshot(s.upper())) for s in ('l', 'r')}
# 一键: 只选各手指根部 (左右一起, 顺序打乱)
roots = ['%s_%s_01_CTRL' % (S, f) for f in ('ring', 'thumb', 'pinky', 'index', 'middle') for S in 'RL']
res = fm.build_from_selection(roots)
exp = {'Thumb': 3, 'Index': 3, 'Middle': 3, 'Ring': 3, 'Pinky': 4}
check('auto detect chains / sides / names', res == {'l': exp, 'r': exp}, str(res))
check('joint end not counted', fm.get_registry('l')['fingers'][1]['ctls'][-1] == 'L_index_03_CTRL')

snaps = {}
for s in ('l', 'r'):
    snaps[s] = run_side(s)




for s in ('l', 'r'):
    fm.remove(s)
    after = snapshot(s.upper())
    for c, (v, par, kc) in snaps[s].items():
        v2, par2, kc2 = after[c]
        ok = par == par2 and kc == kc2 and all(abs(a - b) < 1e-3 for a, b in zip(v, v2))
        if not ok:
            check('%s remove restores %s' % (s, c), False, '%s %s %s / %s %s %s' % (v, par, kc, v2, par2, kc2))
            break
    else:
        check('%s remove restores all ctrls (values, parents, keys)' % s, True)
check('remove: no fm_ nodes', not cmds.ls('fm_*'), str(cmds.ls('fm_*')[:5]))

# 名字里没有手指关键字时, 按几何识别
truth = {}
for f in FINGERS:
    new = cmds.rename('L_%s_01_CTRL' % f, 'L_digit%s_01_CTRL' % 'QWERT'['thumb index middle ring pinky'.split().index(f)])
    truth[new] = SLOT[f]
res = fm.build_from_selection(sorted(truth))
got = {fd['ctls'][0]: fd['name'] for fd in fm.get_registry('l')['fingers']}
check('geometric finger naming', got == truth, str(got))
fm.remove('l')
check('registry survives remove', len(fm.get_registry('l')['fingers']) == 5)

print('\n==== %d / %d passed ====' % (sum(ok for _, ok in results), len(results)))
maya.standalone.uninitialize()
