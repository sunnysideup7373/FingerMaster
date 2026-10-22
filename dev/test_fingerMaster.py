# -*- coding: utf-8 -*-
"""mayapy test_fingerMaster.py  -  建一个模拟绑定, 跑 fingerMaster 并检查结果."""
import os
import sys
import math
import maya.standalone
maya.standalone.initialize()

import maya.cmds as cmds
import maya.api.OpenMaya as om

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(HERE))
import fingerMaster as fm

WRIST = (60, 140, 0)
# finger: (base pos, [segment vectors]) - 左手 T-pose, 掌心朝下 (-Y), 手指朝 +X, 拇指朝 +Z
FINGERS = {
    'Thumb': ((62, 139, 3), [(2.0, -0.8, 2.0), (1.8, -0.6, 1.4), (1.5, -0.4, 1.0)]),
    'Index': ((69, 140, 3), [(3.5, -0.2, 0.3), (2.3, -0.2, 0.1), (1.8, -0.2, 0)]),
    'Middle': ((69.5, 140.2, 1), [(3.8, -0.2, 0), (2.6, -0.2, 0), (2.0, -0.2, 0)]),
    'Ring': ((69, 140, -1), [(3.5, -0.2, -0.2), (2.4, -0.2, -0.1), (1.9, -0.2, 0)]),
    # 小指 4 节 (带掌骨), 用来测试 4 节链
    'Pinky': ((62, 139.8, -2), [(5.5, 0.1, -1.0), (2.8, -0.2, -0.3), (1.9, -0.2, -0.1), (1.5, -0.2, 0)]),
}
SEGS = 'ABCD'


def wpos(n):
    return om.MVector(cmds.xform(n, q=True, ws=True, t=True))


def make_side(side, hand):
    for finger, (base, vecs) in FINGERS.items():
        F = 'Finger' + finger
        mod = cmds.createNode('transform', n='_module_%s_%s' % (side, F), p='GeneratedRig')
        driven = cmds.createNode('transform', n='drivenChains_%s_%s' % (side, F), p=mod)
        driver = cmds.createNode('transform', n='driverChains_%s_%s' % (side, F), p=mod)
        fkchain = cmds.createNode('transform', n='fkChain_%s_%s' % (side, F), p=driver)
        fkctls = cmds.createNode('transform', n='fkControls_%s_%s' % (side, F), p=fkchain)

        # 用骨骼求出朝向 (X 指向下一节, 和常见自动绑定一样)
        cmds.select(cl=True)
        pts = [om.MVector(base)]
        for v in vecs:
            pts.append(pts[-1] + om.MVector(v))
        sx = 1 if side == 'l' else -1
        jn = []
        for i, p in enumerate(pts):
            n = 'drv_%s_%s%s' % (side, F, SEGS[i] if i < len(vecs) else 'Tip')
            jn.append(cmds.joint(n=n, p=(p.x * sx, p.y, p.z)))
        cmds.joint(jn[0], e=True, oj='xyz', sao='yup', ch=True, zso=True)
        cmds.setAttr(jn[-1] + '.jointOrient', 0, 0, 0)
        cmds.parent(jn[0], driven)

        prev = hand
        for i in range(len(vecs)):
            seg = SEGS[i]
            off = cmds.createNode('transform', n='off_%s_%s%s_fk' % (side, F, seg), p=fkctls)
            cmds.xform(off, ws=True, m=cmds.xform(jn[i], q=True, ws=True, m=True))
            ctl = cmds.circle(n='ctl_%s_%s%s_fk' % (side, F, seg), nr=(1, 0, 0), r=0.6, ch=False)[0]
            cmds.parent(ctl, off, r=True)
            cmds.parentConstraint(prev, off, mo=True, n=off + '_parentConstraint')
            if side == 'r':
                # 右手: ctl -> 中间 driver 骨骼 (平铺) -> 蒙皮骨骼, 两层约束
                mid = cmds.createNode('joint', n='dvr_%s_%s%s' % (side, F, seg), p=fkchain)
                cmds.xform(mid, ws=True, m=cmds.xform(jn[i], q=True, ws=True, m=True))
                cmds.parentConstraint(ctl, mid, mo=True)
                cmds.parentConstraint(mid, jn[i], mo=True)
            else:
                cmds.parentConstraint(ctl, jn[i], mo=True)
            prev = ctl


def build_mock():
    cmds.file(new=True, force=True)
    cmds.createNode('transform', n='GeneratedRig')
    for side, sx in (('l', 1), ('r', -1)):
        hand = cmds.circle(n='ctl_%s_hand' % side, nr=(1, 0, 0), r=4, ch=False)[0]
        cmds.xform(hand, ws=True, t=(WRIST[0] * sx, WRIST[1], WRIST[2]))
        if side == 'r':
            cmds.setAttr(hand + '.ry', 180)  # 右手控制器镜像朝向
        make_side(side, hand)


def tips(side):
    return {f: wpos('drv_%s_Finger%sTip' % (side, f)) for f in FINGERS}


results = []


def check(name, ok, info=''):
    results.append((name, ok))
    print('%s  %s  %s' % ('PASS' if ok else 'FAIL', name, info))


def reset(master):
    for a in cmds.listAttr(master, k=True) or []:
        cmds.setAttr('%s.%s' % (master, a), 0)


def run_side(side):
    sx = 1 if side == 'l' else -1
    rest = tips(side)
    if side == 'l':
        # 一键: 左右手所有控制器全选 (故意选多), 自动识别
        # 只选根部控制器 (平铺结构, 靠约束找下一节)
        ch = fm.trace_chain('ctl_l_FingerPinkyA_fk')
        check('flat rig: root ctl only -> whole chain', ch == ['ctl_l_FingerPinky%s_fk' % s for s in 'ABCD'], str(ch))
        # 只选每根手指的根骨骼 (左右一起)
        res = fm.build_from_selection(cmds.ls('drv_*_Finger*A', type='joint'))
        print('detected', res)
        exp = {'Thumb': 3, 'Index': 3, 'Middle': 3, 'Ring': 3, 'Pinky': 4}
        check('auto detect both sides', res == {'l': exp, 'r': exp}, str(res))
    master = 'fm_%s_hand_ctl' % side

    # 0. 建立后不应改变姿势
    moved = max((tips(side)[f] - rest[f]).length() for f in FINGERS)
    check('%s rest unchanged' % side, moved < 1e-3, 'max %.5f' % moved)

    # 1. fist -> 指尖朝掌心 (-Y) 运动, 且靠近手腕
    cmds.setAttr(master + '.fist', 3)
    t = tips(side)
    for f in FINGERS:
        dy = t[f].y - rest[f].y
        if f == 'Thumb':   # 拇指抓握 = 指尖靠近掌心 (中指根部), 不是往下
            mid = wpos('drv_%s_FingerMiddleA' % side)
            d0, d1 = (rest[f] - mid).length(), (t[f] - mid).length()
            check('%s fist Thumb toward palm center' % side, d1 < d0 - 0.3, '%.2f -> %.2f' % (d0, d1))
        else:
            check('%s fist %s toward palm' % (side, f), dy < -0.5, 'dy=%.2f' % dy)
    reset(master)

    # 2. spread -> 食指往 +Z (拇指侧), 小指往 -Z
    cmds.setAttr(master + '.spread', 10)
    t = tips(side)
    check('%s spread index +Z' % side, t['Index'].z - rest['Index'].z > 0.3, '%.2f' % (t['Index'].z - rest['Index'].z))
    check('%s spread pinky -Z' % side, t['Pinky'].z - rest['Pinky'].z < -0.3, '%.2f' % (t['Pinky'].z - rest['Pinky'].z))
    reset(master)

    # 3. fistRoll=5 时小指已握, 食指还没怎么动
    cmds.setAttr(master + '.fistRoll', 2.5)
    t = tips(side)
    dp, di = rest['Pinky'].y - t['Pinky'].y, rest['Index'].y - t['Index'].y
    check('%s fistRoll pinky leads' % side, dp > 0.5 and di < 0.05, 'pinky %.2f index %.2f' % (dp, di))
    reset(master)

    # 4. IK: 开 IK 后静止姿势不变, 移动 IK 控制器指尖跟随
    for f in FINGERS:
        cmds.setAttr('%s.%sIK' % (master, f[0].lower() + f[1:]), 1)
    t = tips(side)
    moved = max((t[f] - rest[f]).length() for f in FINGERS)
    check('%s IK rest unchanged' % side, moved < 0.05, 'max %.4f' % moved)
    ikc = 'fm_%s_Index_ik_ctl' % side
    cmds.move(-1.5 * sx, -2.5, 0, ikc, r=True, ws=True)
    tgt = wpos(ikc)
    d = (wpos('fm_%s_IndexC_ik_jnt' % side) - tgt).length()
    tipd = (wpos('drv_%s_FingerIndexC' % side) - tgt).length()
    check('%s IK index reaches target' % side, d < 0.05 and tipd < 0.05, 'ikjnt %.4f, skinJnt %.4f' % (d, tipd))
    # 旋转方块 -> 指尖朝向改变
    a = tips(side)['Index']
    cmds.rotate(0, 0, -40, ikc, r=True, os=True)
    check('%s IK cube rotation aims tip' % side, (tips(side)['Index'] - a).length() > 0.5)
    cmds.setAttr(ikc + '.rotate', 0, 0, 0)
    cmds.move(1.5 * sx, 2.5, 0, ikc, r=True, ws=True)
    reset(master)

    # 4b. FK -> IK 切换不跳 (弯曲 + 扭转 + FK 控制器叠加)
    cmds.setAttr(master + '.fist', 4)
    cmds.setAttr(master + '.indexTwist', 3)
    cmds.setAttr(master + '.spread', 4)
    before = tips(side)
    rot = lambda: {n: om.MTransformationMatrix(om.MMatrix(cmds.xform(n, q=True, ws=True, m=True))).rotation(asQuaternion=True)
                   for n in cmds.ls('drv_%s_Finger*' % side, type='joint')}
    rot0 = rot()
    for f in FINGERS:
        fm.snap_ik_to_fk(side, f)
        cmds.setAttr('%s.%sIK' % (master, f[0].lower() + f[1:]), 1)
    jump = max((tips(side)[f] - before[f]).length() for f in FINGERS)
    check('%s FK->IK switch no jump' % side, jump < 0.01, 'max %.5f' % jump)
    rot1 = rot()
    twist = max(math.degrees(2 * math.acos(min(1.0, abs(sum(a * b for a, b in zip(rot0[n], rot1[n])))))) for n in rot0)
    check('%s FK->IK switch no joint roll' % side, twist < 5, 'max %.2f deg' % twist)
    reset(master)

    # 5. FK 控制器依然叠加生效
    cmds.setAttr(master + '.fist', 5)
    a = tips(side)['Middle']
    ctl = 'ctl_%s_FingerMiddleB_fk' % side
    cmds.setAttr(ctl + '.rz', -30)
    b = tips(side)['Middle']
    check('%s FK ctl still layers' % side, (a - b).length() > 0.5, '%.2f' % (a - b).length())
    cmds.setAttr(ctl + '.rz', 0)
    reset(master)

    # 6. Store pose
    cmds.setAttr('ctl_%s_FingerIndexB_fk.rz' % side, -40)
    posed = tips(side)['Index']
    fm.store_pose(side, 'point')
    after = tips(side)['Index']
    check('%s store pose keeps look' % side, (posed - after).length() < 1e-3,
          '%.5f' % (posed - after).length())
    cmds.setAttr(master + '.pose_point', 0)
    back = (tips(side)['Index'] - rest['Index']).length()
    check('%s pose slider 0 = rest' % side, back < 1e-3, '%.5f' % back)


build_mock()

for s in ('l', 'r'):
    run_side(s)


# 7. Remove
for s in ('l', 'r'):
    fm.remove(s)
left = cmds.ls('fm_*')
check('remove: no fm_ nodes', not left, str(left[:5]))
par = cmds.listRelatives('ctl_l_FingerThumbC_fk', p=True)[0]
check('remove: ctl back under off', par == 'off_l_FingerThumbC_fk', par)

print('\n==== %d / %d passed ====' % (sum(ok for _, ok in results), len(results)))
maya.standalone.uninitialize()
