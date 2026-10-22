# -*- coding: utf-8 -*-
"""mayapy test_poses.py - 姿势权重: 100% 完全覆盖滑条, 中间值线性混合, 可 K 帧, 重建保留."""
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


def look():
    return [om.MVector(cmds.xform('jnt_l_Finger%sEnd' % f, q=True, ws=True, t=True))
            for f in ('Thumb', 'Index', 'Middle', 'Ring', 'Pinky')]


def same(a, b, tol=1e-3):
    return max((x - y).length() for x, y in zip(a, b)) < tol


def reset():
    for a in fm.slider_attrs('l'):
        cmds.setAttr('%s.%s' % (m, a), 0)
    for n in fm.pose_weights('l'):
        cmds.setAttr('%s.%s' % (m, fm._pw_attr(n)), 0)


cmds.file(os.path.join(ROOT, 'test_scene_clean.ma'), open=True, force=True)
fm.build_from_selection(cmds.ls('jnt_l_Finger*A', type='joint'))
m = 'fm_l_hand_ctl'
rest = look()

cmds.setAttr(m + '.fist', 4)
cmds.setAttr(m + '.indexCurl', 3)
look_a = look()
fm.save_hand_pose('l', 'grip')
reset()
cmds.setAttr(m + '.spread', 6)
cmds.setAttr(m + '.middleCurl', 5)
look_b = look()
fm.save_hand_pose('l', 'open wide')
reset()
check('two weight attrs on master', cmds.attributeQuery('pw_grip', node=m, exists=True) and
      cmds.attributeQuery('pw_open_wide', node=m, exists=True))
check('weight 0 = no effect', same(look(), rest))

cmds.setAttr(m + '.pw_grip', 1)
check('grip 100% = saved look', same(look(), look_a))
cmds.setAttr(m + '.thumbCurl', 8)
cmds.setAttr(m + '.cup', 6)
check('grip 100% fully overrides sliders', same(look(), look_a))
cmds.setAttr(m + '.thumbCurl', 0)
cmds.setAttr(m + '.cup', 0)

cmds.setAttr(m + '.pw_grip', 0.5)
eff = fm.effective_values('l')
check('grip 50% = halfway (fist 2, indexCurl 1.5)', abs(eff['fist'] - 2) < 1e-4 and abs(eff['indexCurl'] - 1.5) < 1e-4,
      str((eff['fist'], eff['indexCurl'])))

fm.set_pose_weight('l', 'grip', 1)
fm.set_pose_weight('l', 'open wide', 0.3)
w = fm.pose_weights('l')
check('weights never sum above 100%', abs(sum(w.values()) - 1) < 1e-6 and abs(w['open wide'] - 0.3) < 1e-6, str(w))
eff = fm.effective_values('l')
check('70/30 mix values', abs(eff['fist'] - 2.8) < 1e-4 and abs(eff['spread'] - 1.8) < 1e-4,
      str((eff['fist'], eff['spread'])))

fm.apply_hand_pose('l', 'open wide')
check('apply = this 100%, others 0', fm.pose_weights('l') == {'grip': 0.0, 'open wide': 1.0}, str(fm.pose_weights('l')))
check('open wide = saved look', same(look(), look_b))

# 接管: 姿势写回滑条, 手型不变
fm.set_pose_weight('l', 'grip', 0.4)
before = look()
fm.bake_poses('l')
check('bake: weights 0, look unchanged', sum(fm.pose_weights('l').values()) == 0 and same(look(), before))
reset()

# K 帧 + 重建 (改拇指轴) 后保留
cmds.setKeyframe(m, at='pw_grip', t=1, v=0)
cmds.setKeyframe(m, at='pw_grip', t=10, v=1)
fm.set_finger_axis('l', 'Thumb', 'z')
fm.set_finger_axis('l', 'Thumb', 'auto')
check('rebuild keeps pose library', [p['name'] for p in fm.pose_library('l')] == ['grip', 'open wide'])
check('rebuild keeps weight keys', cmds.keyframe(m + '.pw_grip', q=True) == [1.0, 10.0])
cmds.currentTime(10)
check('keyed weight plays: frame 10 = grip', same(look(), look_a))
cmds.currentTime(1)
check('frame 1 = rest', same(look(), rest))
cmds.cutKey(m)

# 更新 / 删除
reset()
cmds.setAttr(m + '.fist', 7)
fm.save_hand_pose('l', 'grip', overwrite=True)
reset()
cmds.setAttr(m + '.pw_grip', 1)
check('update pose', abs(fm.effective_values('l')['fist'] - 7) < 1e-4 and abs(fm.effective_values('l')['indexCurl']) < 1e-4)
fm.delete_hand_pose('l', 'grip')
check('delete pose: attr + nodes gone', not cmds.attributeQuery('pw_grip', node=m, exists=True) and
      not cmds.ls('fm_l_pw_grip__*'))
check('delete keeps other nodes (no cascade)', len(cmds.ls('fm_l_eff_*', type='plusMinusAverage')) == len(fm.GLOBAL_ATTRS) + 6 * 5)
reset()
print('DBG eff', {k: round(v, 3) for k, v in fm.effective_values('l').items() if abs(v) > 1e-4}, fm.pose_weights('l'), cmds.getAttr('fm_l_poseW_sum.output1D'), cmds.getAttr('fm_l_poseW_rev.outputX'))
check('back to rest', same(look(), rest))

# 已有动画时新存姿势: 之前的帧不受影响 (面板 K 帧 = 整只手一起 K)
for t, attr, v in ((1, 'fist', 0), (5, 'spread', 4), (10, 'fist', 6)):
    cmds.currentTime(t)
    cmds.setAttr('%s.%s' % (m, attr), v)
    cmds.setKeyframe(['%s.%s' % (m, a) for a in cmds.listAttr(m, k=True, ud=True)])
frames = (1, 5, 10)
anim = {}
for f in frames:
    cmds.currentTime(f)
    anim[f] = look()
cmds.currentTime(20)
cmds.setAttr(m + '.thumbCurl', 8)
fm.save_hand_pose('l', 'late')
fm.set_pose_weight('l', 'late', 1.0, exclusive=True)
cmds.setKeyframe(['%s.%s' % (m, a) for a in cmds.listAttr(m, k=True, ud=True)])   # = Auto Key 整只手
check('new pose keyed 0 on earlier keys', cmds.keyframe(m + '.pw_late', q=True, vc=True) == [0.0, 0.0, 0.0, 1.0],
      str(list(zip(cmds.keyframe(m + '.pw_late', q=True) or [], cmds.keyframe(m + '.pw_late', q=True, vc=True) or []))))
ok = True
for f in frames:
    cmds.currentTime(f)
    ok = ok and same(look(), anim[f])
check('earlier frames unchanged after saving new pose', ok)
cmds.currentTime(20)
check('frame 20 shows the new pose', abs(fm.effective_values('l')['thumbCurl'] - 8) < 1e-3)
cmds.cutKey(m)
fm.delete_hand_pose('l', 'late')
reset()
fm.remove('l')
check('remove: no fm_ nodes', not cmds.ls('fm_*'))

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
