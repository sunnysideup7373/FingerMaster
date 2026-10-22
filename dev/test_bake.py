# -*- coding: utf-8 -*-
"""mayapy test_bake.py - 烘焙: 去掉 Master 后, 原绑定的骨骼每帧都和烘焙前一样."""
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


def snap(joints, frames):
    out = {}
    for f in frames:
        cmds.currentTime(f, update=True)
        for j in joints:
            out[(j, f)] = om.MMatrix(cmds.getAttr(j + '.worldMatrix[0]'))
    return out


def diff(a, b):
    worst = 0.0
    for k in a:
        ma, mb = a[k], b[k]
        worst = max(worst, max(abs(ma[i] - mb[i]) * (1 if i < 12 else 0.1) for i in range(16)))
    return worst


def animate(m, side):
    cmds.setKeyframe(m, at='fist', t=1, v=0)
    cmds.setKeyframe(m, at='fist', t=12, v=7)
    cmds.setKeyframe(m, at='fist', t=24, v=2)
    cmds.setKeyframe(m, at='thumbCurl', t=1, v=0)
    cmds.setKeyframe(m, at='thumbCurl', t=18, v=6)
    cmds.setKeyframe(m, at='spread', t=6, v=5)
    cmds.setKeyframe(m, at='spread', t=20, v=-3)
    cmds.setAttr(m + '.middleCurl', 4)
    fm.save_hand_pose(side, 'hook')
    cmds.setAttr(m + '.middleCurl', 0)
    cmds.setKeyframe(m, at='pw_hook', t=8, v=0)
    cmds.setKeyframe(m, at='pw_hook', t=16, v=0.8)
    cmds.setKeyframe(m, at='pw_hook', t=24, v=0)
    ik = 'fm_%s_Index_ik_ctl' % side
    cmds.setKeyframe(m, at='indexIK', t=1, v=0)
    cmds.setKeyframe(m, at='indexIK', t=10, v=1)
    fm.snap_ik_to_fk(side, 'Index')
    cmds.setKeyframe(ik, at=['tx', 'ty', 'tz'], t=10)
    cmds.move(0, -1.5, 0, ik, r=True, ws=True)
    cmds.setKeyframe(ik, at=['tx', 'ty', 'tz'], t=22)


def run(title, open_fn, roots, joints, ctl_sample, every_frame, remove_master):
    print('\n--- %s ---' % title)
    open_fn()
    cmds.playbackOptions(min=1, max=24)
    res = fm.build_from_selection(roots)
    side = sorted(res)[0]
    m = 'fm_%s_hand_ctl' % side
    animate(m, side)
    frames = list(range(1, 25))
    before = snap(joints, frames)
    n = fm.bake(side, 1, 24, every_frame=every_frame, remove_master=remove_master)
    after = snap(joints, frames)
    if every_frame:
        check('%s: every frame matches after bake' % title, diff(before, after) < 1e-3, 'max %.6f' % diff(before, after))
    else:
        keyed = sorted({int(t) for t in cmds.keyframe(ctl_sample, q=True) or []})
        b = {k: v for k, v in before.items() if k[1] in keyed}
        a = {k: v for k, v in after.items() if k[1] in keyed}
        check('%s: keyed frames match (%d keys)' % (title, len(keyed)), diff(b, a) < 1e-3, 'max %.6f' % diff(b, a))
        check('%s: in-between frames close' % title, diff(before, after) < 0.15, 'max %.4f' % diff(before, after))
    check('%s: control got keys' % title, bool(cmds.keyframe(ctl_sample + '.rotate', q=True, kc=True)))
    if remove_master:
        check('%s: master removed' % title, not cmds.ls('fm_*'))
    else:
        check('%s: master kept, zeroed, no keys' % title, cmds.objExists(m) and not cmds.keyframe(m, q=True) and
              all(abs(cmds.getAttr('%s.%s' % (m, a))) < 1e-9 for a in cmds.listAttr(m, k=True, ud=True)))
        cmds.setAttr(m + '.fist', 3)
        cmds.currentTime(5)
        moved = diff({k: v for k, v in snap(joints, [5]).items()}, {k: v for k, v in after.items() if k[1] == 5})
        check('%s: kept master still works on top' % title, moved > 0.1)


def open_clean():
    cmds.file(os.path.join(ROOT, 'test_scene_clean.ma'), open=True, force=True)


def open_ref_clean():
    cmds.file(new=True, force=True)
    cmds.file(os.path.join(ROOT, 'test_scene_clean.ma'), reference=True, namespace='hero')


tmp = os.path.join(tempfile.gettempdir(), 'fm_local_rig.ma')
subprocess.check_call([sys.executable, os.path.join(HERE, 'test_local.py'), '--save', tmp],
                      stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


def open_ref_local():
    cmds.file(new=True, force=True)
    cmds.file(tmp, reference=True, namespace='hero')


J = ['jnt_l_Finger%s%s' % (f, s) for f in FINGERS for s in ('ABC' if f != 'Pinky' else 'ABCD')]
run('constraint rig, every frame, remove', open_clean, ['jnt_l_Finger%sA' % f for f in FINGERS], J,
    'ctl_l_FingerIndexB_fk', True, True)
run('constraint rig, keyed frames, keep master', open_clean, ['jnt_l_Finger%sA' % f for f in FINGERS], J,
    'ctl_l_FingerIndexB_fk', False, False)
run('referenced constraint rig', open_ref_clean, ['hero:jnt_l_Finger%sA' % f for f in FINGERS],
    ['hero:' + j for j in J], 'hero:ctl_l_FingerIndexB_fk', True, True)
run('referenced direct-read rig', open_ref_local, ['hero:skin_l_%s1' % f for f in FINGERS],
    ['hero:skin_l_%s%d' % (f, i) for f in FINGERS for i in range(1, 4 if f != 'Pinky' else 5)],
    'hero:ac_l_Index2', True, True)

print('\n==== %d / %d passed ====' % (sum(results), len(results)))
maya.standalone.uninitialize()
