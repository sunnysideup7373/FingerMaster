# -*- coding: utf-8 -*-
"""mayapy test_reference.py - 绑定是「引用」进来的 (带命名空间), 不能改父子关系."""
import os
import subprocess
import sys
import tempfile
import maya.standalone
maya.standalone.initialize()
import maya.cmds as cmds
import maya.api.OpenMaya as om

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, ROOT)
import fingerMaster as fm

results = []
FINGERS = ('Thumb', 'Index', 'Middle', 'Ring', 'Pinky')


def check(name, ok, info=''):
    results.append(ok)
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def W(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


def run(title, path, roots, ends, sides, ctl_sample):
    print('\n--- %s ---' % title)
    cmds.file(new=True, force=True)
    cmds.file(path, reference=True, namespace='hero')
    check('%s: rig is referenced' % title, cmds.referenceQuery(roots[0], isNodeReferenced=True))
    rest = {e: W(e) for e in ends}
    par0 = cmds.listRelatives(ctl_sample, p=True)
    res = fm.build_from_selection(roots)
    check('%s: built %s' % (title, sorted(res)), sorted(res) == sorted(sides), str(res))
    for s in sides:
        r = fm.LAST_REPORT[s]
        check('%s: %s self-check all follow' % (title, s), r['ok'] == r['checked'] > 0, '%d/%d' % (r['ok'], r['checked']))
    check('%s: controls not reparented' % title, cmds.listRelatives(ctl_sample, p=True) == par0)
    moved = max((W(e) - rest[e]).length() for e in ends)
    check('%s: rest unchanged' % title, moved < 1e-3, '%.5f' % moved)
    for s in sides:
        cmds.setAttr('fm_%s_hand_ctl.fist' % s, 3)
    def curled(e):
        if 'Thumb' in e:   # 拇指抓握 = 指尖靠近掌心 (中指根部)
            mid = W(e.replace('FingerThumbEnd', 'FingerMiddleA').replace('ThumbEnd', 'Middle1'))
            return (W(e) - mid).length() < (rest[e] - mid).length() - 0.3
        return W(e).y < rest[e].y - 0.5
    bad = [e for e in ends if not curled(e)]
    check('%s: fist curls every finger' % title, not bad, str(bad))
    for s in sides:
        cmds.setAttr('fm_%s_hand_ctl.fist' % s, 0)
    s0 = sides[0]
    cmds.setAttr('fm_%s_hand_ctl.indexIK' % s0, 1)
    cmds.move(0, -2, 0, 'fm_%s_Index_ik_ctl' % s0, r=True, ws=True)
    idx_end = [e for e in ends if 'Index' in e and ('_%s_' % s0) in e][0]
    check('%s: IK moves referenced finger' % title, (W(idx_end) - rest[idx_end]).length() > 0.5)
    cmds.move(0, 2, 0, 'fm_%s_Index_ik_ctl' % s0, r=True, ws=True)
    cmds.setAttr('fm_%s_hand_ctl.indexIK' % s0, 0)
    for s in sides:
        fm.remove(s)
    check('%s: no fm_ nodes left' % title, not cmds.ls('fm_*'))
    opm = cmds.getAttr(ctl_sample + '.offsetParentMatrix')
    check('%s: offsetParentMatrix restored' % title,
          not cmds.listConnections(ctl_sample + '.offsetParentMatrix', s=True, d=False) and
          all(abs(a - b) < 1e-6 for a, b in zip(opm, [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1])))
    moved = max((W(e) - rest[e]).length() for e in ends)
    check('%s: back to rest after remove' % title, moved < 1e-3, '%.5f' % moved)


# 1) 你的项目结构 (平铺控制器 + 约束), 引用
run('constraint rig (referenced)', os.path.join(ROOT, 'test_scene_clean.ma'),
    ['hero:jnt_%s_Finger%sA' % (s, f) for s in 'lr' for f in FINGERS],
    ['hero:jnt_%s_Finger%sEnd' % (s, f) for s in 'lr' for f in FINGERS], ['l', 'r'],
    'hero:ctl_l_FingerIndexB_fk')

# 2) 直接读控制器数值的绑定, 引用
tmp = os.path.join(tempfile.gettempdir(), 'fm_local_rig.ma')
subprocess.check_call([sys.executable, os.path.join(HERE, 'test_local.py'), '--save', tmp],
                      stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
run('direct-read rig (referenced)', tmp,
    ['hero:skin_l_%s1' % f for f in FINGERS],
    ['hero:skin_l_%sEnd' % f for f in FINGERS], ['l'], 'hero:ac_l_Index2')

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
