# -*- coding: utf-8 -*-
"""mayapy test_segments.py - 单指单节弯曲 (Base / Mid / Tip), 负数 = 反折."""
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
FINGERS = ('Thumb', 'Index', 'Middle', 'Ring', 'Pinky')


def check(name, ok, info=''):
    results.append(ok)
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def local_rot(j):
    """骨骼相对父骨骼的朝向."""
    p = cmds.listRelatives(j, p=True, f=True)[0]
    return om.MTransformationMatrix(om.MMatrix(cmds.getAttr(j + '.worldMatrix[0]')) *
                                    om.MMatrix(cmds.getAttr(p + '.worldInverseMatrix[0]'))).rotation(asQuaternion=True)


def joints(f):
    return ['jnt_l_Finger%s%s' % (f, s) for s in ('ABCD' if f == 'Pinky' else 'ABC')]


def snapshot():
    return {j: local_rot(j) for f in FINGERS for j in joints(f)}


def changed(a, b):
    return sorted(j for j in a if a[j].isEquivalent(b[j], 1e-5) is False)


cmds.file(os.path.join(ROOT, 'test_scene_clean.ma'), open=True, force=True)
fm.build_from_selection(cmds.ls('jnt_l_Finger*A', type='joint'))
m = 'fm_l_hand_ctl'
check('per-finger Base/Mid/Tip attrs', all(cmds.attributeQuery(fm._low(f) + s, node=m, exists=True)
                                           for f in FINGERS for s in ('Base', 'Mid', 'Tip')))
rest = snapshot()
tip0 = om.MVector(cmds.xform('jnt_l_FingerIndexEnd', q=True, ws=True, t=True))

cmds.setAttr(m + '.indexMid', -5)
now = snapshot()
check('indexMid only moves index joint B', changed(rest, now) == ['jnt_l_FingerIndexB'], str(changed(rest, now)))
cmds.setAttr(m + '.indexMid', 5)
down = om.MVector(cmds.xform('jnt_l_FingerIndexEnd', q=True, ws=True, t=True)).y
cmds.setAttr(m + '.indexMid', -5)
up = om.MVector(cmds.xform('jnt_l_FingerIndexEnd', q=True, ws=True, t=True)).y
check('negative = bends backwards (tip goes up)', up > tip0.y > down, 'up %.2f rest %.2f down %.2f' % (up, tip0.y, down))
cmds.setAttr(m + '.indexMid', 0)

cmds.setAttr(m + '.pinkyTip', -4)
check('pinkyTip moves only pinky D (4 joints, metacarpal skipped)', changed(rest, snapshot()) == ['jnt_l_FingerPinkyD'],
      str(changed(rest, snapshot())))
cmds.setAttr(m + '.pinkyTip', 0)
cmds.setAttr(m + '.thumbBase', 3)
check('thumbBase moves only thumb A', changed(rest, snapshot()) == ['jnt_l_FingerThumbA'], str(changed(rest, snapshot())))
cmds.setAttr(m + '.thumbBase', 0)

# 和整手一起: 握拳 + 食指中节反折
cmds.setAttr(m + '.fist', 6)
cmds.setAttr(m + '.indexMid', -6)
st = fm.live_state('l')
tot = fm.finger_totals('l', 'Index', st)
check('totals show per-joint value', abs(tot['Mid'] - (6 * 1.1 - 6)) < 0.05, str({k: round(v, 2) for k, v in tot.items()}))
fm.save_hand_pose('l', 'hook')
check('pose stores per-joint value', fm.pose_library('l')[0]['values']['indexMid'] == -6)
for a in fm.slider_attrs('l'):
    cmds.setAttr('%s.%s' % (m, a), 0)
check('back to rest', not changed(rest, snapshot()))

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
