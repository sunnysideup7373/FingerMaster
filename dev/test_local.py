# -*- coding: utf-8 -*-
"""mayapy test_local.py - 绑定直接读控制器的局部数值 (ctl.rotate / ctl.matrix -> 骨骼) 时,
Master 必须自动切换成「直接叠加」才能生效."""
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
    'Thumb': ((62, 139, 3), [(2.0, -0.8, 2.0), (1.8, -0.6, 1.4), (1.5, -0.4, 1.0)]),
    'Index': ((69, 140, 3), [(3.5, -0.2, 0.3), (2.3, -0.2, 0.1), (1.8, -0.2, 0)]),
    'Middle': ((69.5, 140.2, 1), [(3.8, -0.2, 0), (2.6, -0.2, 0), (2.0, -0.2, 0)]),
    'Ring': ((69, 140, -1), [(3.5, -0.2, -0.2), (2.4, -0.2, -0.1), (1.9, -0.2, 0)]),
    'Pinky': ((62, 139.8, -2), [(5.5, 0.1, -1.0), (2.8, -0.2, -0.3), (1.9, -0.2, -0.1), (1.5, -0.2, 0)]),
}
results = []


def check(name, ok, info=''):
    results.append(ok)
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def W(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


cmds.file(new=True, force=True)
hand = cmds.circle(n='ctl_l_hand', nr=(1, 0, 0), r=4, ch=False)[0]
cmds.xform(hand, ws=True, t=(60, 140, 0))
skel = cmds.createNode('transform', n='skeleton')
cmds.parentConstraint(hand, skel, mo=True)
for F, (base, vecs) in FINGERS.items():
    cmds.select(cl=True)
    pts = [om.MVector(base)]
    for v in vecs:
        pts.append(pts[-1] + om.MVector(v))
    jn = [cmds.joint(n='skin_l_%s%d' % (F, i + 1) if i < len(vecs) else 'skin_l_%sEnd' % F, p=tuple(p))
          for i, p in enumerate(pts)]
    cmds.joint(jn[0], e=True, oj='xyz', sao='yup', ch=True, zso=True)
    cmds.setAttr(jn[-1] + '.jointOrient', 0, 0, 0)
    cmds.parent(jn[0], skel)
    grp = cmds.createNode('transform', n='ctrls_l_%s' % F, p=hand)
    for i in range(len(vecs)):
        off = cmds.createNode('transform', n='zero_l_%s%d' % (F, i + 1), p=grp)
        cmds.xform(off, ws=True, m=cmds.xform(jn[i], q=True, ws=True, m=True))
        ctl = cmds.circle(n='ac_l_%s%d' % (F, i + 1), nr=(1, 0, 0), r=0.6, ch=False)[0]
        cmds.parent(ctl, off, r=True)
        if i > 0:   # 控制器平铺, offset 组跟随上一节 (矩阵连接, 不用约束)
            mm = cmds.createNode('multMatrix')
            cmds.connectAttr('ac_l_%s%d.worldMatrix[0]' % (F, i), mm + '.matrixIn[1]')
            local = om.MMatrix(cmds.xform(off, q=True, ws=True, m=True)) * \
                om.MMatrix(cmds.xform('ac_l_%s%d' % (F, i), q=True, ws=True, m=True)).inverse()
            cmds.setAttr(mm + '.matrixIn[0]', [local[k] for k in range(16)], type='matrix')
            cmds.connectAttr(grp + '.worldInverseMatrix[0]', mm + '.matrixIn[2]')
            dm = cmds.createNode('decomposeMatrix')
            cmds.connectAttr(mm + '.matrixSum', dm + '.inputMatrix')
            cmds.connectAttr(dm + '.outputTranslate', off + '.translate')
            cmds.connectAttr(dm + '.outputRotate', off + '.rotate')
        # 蒙皮骨骼直接读控制器的局部数值
        if F == 'Ring':
            dm = cmds.createNode('decomposeMatrix', n='ringDecomp%d' % (i + 1))
            cmds.connectAttr(ctl + '.matrix', dm + '.inputMatrix')
            cmds.connectAttr(dm + '.outputRotate', jn[i] + '.rotate')
        else:
            cmds.connectAttr(ctl + '.rotate', jn[i] + '.rotate')

if '--save' in sys.argv:   # 只生成绑定文件 (给 test_reference.py 引用)
    cmds.file(rename=sys.argv[sys.argv.index('--save') + 1])
    cmds.file(save=True, type='mayaAscii')
    maya.standalone.uninitialize()
    sys.exit(0)

roots = ['skin_l_%s1' % F for F in FINGERS]
rest = {F: W('skin_l_%sEnd' % F) for F in FINGERS}
conns_before = sorted(cmds.listConnections('skin_l_Index1', s=True, d=False, c=True, p=True))

# 控制器本身确实能带动骨骼
cmds.setAttr('ac_l_Index2.rz', -30)
check('rig sanity: FK control drives skin', (W('skin_l_IndexEnd') - rest['Index']).length() > 0.5)
cmds.setAttr('ac_l_Index2.rz', 0)

res = fm.build_from_selection(roots)
check('detected 5 fingers from root joints', res == {'l': {'Thumb': 3, 'Index': 3, 'Middle': 3, 'Ring': 3, 'Pinky': 4}}, str(res))
rep = fm.LAST_REPORT['l']
check('self-check: all joints follow master', rep['ok'] == rep['checked'] == 16, '%d/%d' % (rep['ok'], rep['checked']))
check('direct mode was needed', all(r['result'] == 'ok (direct mode)' for r in rep['rows']),
      str(sorted({r['result'] for r in rep['rows']})))
moved = max((W('skin_l_%sEnd' % F) - rest[F]).length() for F in FINGERS)
check('rest pose unchanged after build', moved < 1e-3, '%.5f' % moved)

m = 'fm_l_hand_ctl'
cmds.setAttr(m + '.fist', 3)
for F in FINGERS:
    dy = W('skin_l_%sEnd' % F).y - rest[F].y
    if F == 'Thumb':   # 拇指抓握 = 指尖靠近掌心 (中指根部), 不是往下
        mid = W('skin_l_Middle1')
        d0, d1 = (rest[F] - mid).length(), (W('skin_l_ThumbEnd') - mid).length()
        check('fist moves skin Thumb toward palm center', d1 < d0 - 0.3, '%.2f -> %.2f' % (d0, d1))
    else:
        check('fist moves skin %s toward palm' % F, dy < -0.5, 'dy=%.2f' % dy)
cmds.setAttr(m + '.fist', 0)
# FK 控制器 + Master 叠加
cmds.setAttr(m + '.fist', 2)
a = W('skin_l_IndexEnd')
cmds.setAttr('ac_l_Index2.rz', -20)
check('FK control still layers on top', (W('skin_l_IndexEnd') - a).length() > 0.3)
cmds.setAttr('ac_l_Index2.rz', 0)
cmds.setAttr(m + '.fist', 0)
# IK
cmds.setAttr(m + '.indexIK', 1)
moved = (W('skin_l_IndexEnd') - rest['Index']).length()
check('IK on at rest: no move', moved < 1e-3, '%.5f' % moved)
cmds.move(0, -2, 0, 'fm_l_Index_ik_ctl', r=True, ws=True)
check('IK cube moves skin finger', (W('skin_l_IndexEnd') - rest['Index']).length() > 0.5)
cmds.move(0, 2, 0, 'fm_l_Index_ik_ctl', r=True, ws=True)
cmds.setAttr(m + '.indexIK', 0)
# 姿势
cmds.setAttr(m + '.fist', 5)
look = W('skin_l_RingEnd')
fm.store_pose('l', 'curl')
check('pose from sliders keeps look', (W('skin_l_RingEnd') - look).length() < 1e-3)
cmds.setAttr(m + '.pose_curl', 0)

fm.remove('l')
check('remove restores original connections',
      sorted(cmds.listConnections('skin_l_Index1', s=True, d=False, c=True, p=True)) == conns_before,
      str(cmds.listConnections('skin_l_Index1', s=True, d=False, c=True, p=True)))
print('DBG', [(d, cmds.listConnections(d + '.inputMatrix', p=True), cmds.listConnections(d + '.outputRotate', p=True)) for d in cmds.ls(type='decomposeMatrix')])
check('remove: ring matrix path restored', cmds.listConnections('ringDecomp1.inputMatrix', p=True) == ['ac_l_Ring1.matrix'],
      str(cmds.listConnections('ringDecomp1.inputMatrix', p=True)))
check('remove: no fm_ nodes', not cmds.ls('fm_*'))
cmds.setAttr('ac_l_Index2.rz', -30)
check('after remove FK still drives skin', (W('skin_l_IndexEnd') - rest['Index']).length() > 0.5)

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
