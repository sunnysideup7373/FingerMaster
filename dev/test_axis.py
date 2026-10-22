# -*- coding: utf-8 -*-
"""mayapy test_axis.py - 拇指抓握轴手动指定 + 重建时保留姿势 / 关键帧 / 数值."""
import os
import sys
import maya.standalone
maya.standalone.initialize()
import maya.cmds as cmds
import maya.api.OpenMaya as om

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, ROOT)
import fingerMaster as fm

results = []


def check(name, ok, info=''):
    results.append(ok)
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def W(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


cmds.file(os.path.join(ROOT, 'test_scene_clean.ma'), open=True, force=True)
fm.build_from_selection(cmds.ls('jnt_l_Finger*A', type='joint'))
m = 'fm_l_hand_ctl'
auto = fm.finger_axes('l', 'Thumb')
print('auto thumb axes (curl, spread):', auto)
palm_c = (W('jnt_l_FingerIndexA') + W('jnt_l_FingerPinkyB')) * 0.5 - om.MVector(0, 1.5, 0)
tip = 'jnt_l_FingerThumbEnd'
rest = W(tip)
cmds.setAttr(m + '.thumbCurl', 6)
check('auto: thumb grasps toward palm center', (W(tip) - palm_c).length() < (rest - palm_c).length() - 0.3,
      '%.2f -> %.2f' % ((rest - palm_c).length(), (W(tip) - palm_c).length()))
cmds.setAttr(m + '.thumbCurl', 0)

# 准备要保留的东西: 姿势、关键帧、当前值、IK 方块关键帧
cmds.setAttr(m + '.fist', 4)
look = W('jnt_l_FingerMiddleEnd')
fm.store_pose('l', 'grip')
cmds.setKeyframe(m, at='spread', t=1, v=0)
cmds.setKeyframe(m, at='spread', t=10, v=5)
cmds.setKeyframe('fm_l_Index_ik_ctl', at='ty', t=1, v=0)
cmds.setKeyframe('fm_l_Index_ik_ctl', at='ty', t=10, v=-1)
cmds.setAttr(m + '.cup', 2)
cmds.currentTime(1)

for ax in ('x', 'y', 'z'):
    fm.set_finger_axis('l', 'Thumb', ax)
    got = fm.finger_axes('l', 'Thumb')[0]
    check('thumb axis set to %s' % ax.upper(), got.strip('-') == ax, str(got))
    others = {f: fm.finger_axes('l', f)[0] for f in ('Index', 'Middle', 'Ring', 'Pinky')}
    check('  other fingers unchanged (auto)', len(set(v.strip('-') for v in others.values())) == 1, str(others))

fm.set_finger_axis('l', 'Thumb', 'auto')
check('back to auto', fm.finger_axes('l', 'Thumb') == auto, str(fm.finger_axes('l', 'Thumb')))
fm.set_finger_axis('l', 'Thumb', 'keep', curl_flip=True)
check('flip reverses sign', fm.finger_axes('l', 'Thumb')[0] != auto[0] and
      fm.finger_axes('l', 'Thumb')[0].strip('-') == auto[0].strip('-'), str(fm.finger_axes('l', 'Thumb')))
fm.set_finger_axis('l', 'Thumb', 'keep', curl_flip=False)

# 重建后保留
check('pose kept', cmds.attributeQuery('pose_grip', node=m, exists=True))
cmds.setAttr(m + '.cup', 0)
cmds.setAttr(m + '.pose_grip', 1)
check('pose still gives same hand', (W('jnt_l_FingerMiddleEnd') - look).length() < 1e-3,
      '%.5f' % (W('jnt_l_FingerMiddleEnd') - look).length())
check('master keys kept', cmds.keyframe(m + '.spread', q=True) == [1.0, 10.0], str(cmds.keyframe(m + '.spread', q=True)))
check('IK ctrl keys kept', cmds.keyframe('fm_l_Index_ik_ctl.ty', q=True) == [1.0, 10.0])
cmds.currentTime(10)
check('keyed value plays', abs(cmds.getAttr(m + '.spread') - 5) < 1e-6)

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
