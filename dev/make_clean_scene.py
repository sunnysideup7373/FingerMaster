# -*- coding: utf-8 -*-
"""mayapy make_clean_scene.py -> test_scene_clean.ma (模拟你项目的手指 FK 结构, 无 Master)."""
import os
import maya.standalone
maya.standalone.initialize()
import maya.cmds as cmds
import maya.api.OpenMaya as om

HERE = os.path.dirname(os.path.abspath(__file__))
WRIST = (60, 140, 0)
FINGERS = {
    'Thumb': ((62, 139, 3), [(2.0, -0.8, 2.0), (1.8, -0.6, 1.4), (1.5, -0.4, 1.0)]),
    'Index': ((69, 140, 3), [(3.5, -0.2, 0.3), (2.3, -0.2, 0.1), (1.8, -0.2, 0)]),
    'Middle': ((69.5, 140.2, 1), [(3.8, -0.2, 0), (2.6, -0.2, 0), (2.0, -0.2, 0)]),
    'Ring': ((69, 140, -1), [(3.5, -0.2, -0.2), (2.4, -0.2, -0.1), (1.9, -0.2, 0)]),
    'Pinky': ((62, 139.8, -2), [(5.5, 0.1, -1.0), (2.8, -0.2, -0.3), (1.9, -0.2, -0.1), (1.5, -0.2, 0)]),
}
SEGS = 'ABCD'


def make_side(side, hand, geo_grp, sg):
    sx = 1 if side == 'l' else -1
    for finger, (base, vecs) in FINGERS.items():
        F = 'Finger' + finger
        mod = cmds.createNode('transform', n='_module_%s_%s' % (side, F), p='GeneratedRig')
        driven = cmds.createNode('transform', n='drivenChains_%s_%s' % (side, F), p=mod)
        driver = cmds.createNode('transform', n='driverChains_%s_%s' % (side, F), p=mod)
        fkchain = cmds.createNode('transform', n='fkChain_%s_%s' % (side, F), p=driver)
        fkctls = cmds.createNode('transform', n='fkControls_%s_%s' % (side, F), p=fkchain)

        cmds.select(cl=True)
        pts = [om.MVector(base)]
        for v in vecs:
            pts.append(pts[-1] + om.MVector(v))
        jn = []
        for i, p in enumerate(pts):
            n = 'jnt_%s_%s%s' % (side, F, SEGS[i] if i < len(vecs) else 'End')
            jn.append(cmds.joint(n=n, p=(p.x * sx, p.y, p.z)))
        cmds.joint(jn[0], e=True, oj='xyz', sao='yup', ch=True, zso=True)
        cmds.setAttr(jn[-1] + '.jointOrient', 0, 0, 0)
        cmds.parent(jn[0], driven)

        prev = hand
        for i in range(len(vecs)):
            seg = SEGS[i]
            off = cmds.createNode('transform', n='off_%s_%s%s_fk' % (side, F, seg), p=fkctls)
            cmds.xform(off, ws=True, m=cmds.xform(jn[i], q=True, ws=True, m=True))
            ctl = cmds.circle(n='ctl_%s_%s%s_fk' % (side, F, seg), nr=(1, 0, 0), r=0.7, ch=False)[0]
            for s in cmds.listRelatives(ctl, s=True):
                cmds.setAttr(s + '.overrideEnabled', 1)
                cmds.setAttr(s + '.overrideColor', 6 if side == 'l' else 13)
            cmds.parent(ctl, off, r=True)
            cmds.parentConstraint(prev, off, mo=True, n=off + '_parentConstraint')
            cmds.parentConstraint(ctl, jn[i], mo=True)
            prev = ctl

            # 简单模型 (跟随骨骼)
            L = cmds.getAttr(jn[i + 1] + '.tx')
            if not (finger == 'Pinky' and i == 0):
                r = 0.5 if finger in ('Thumb', 'Middle') else 0.45
                cyl = cmds.polyCylinder(n='geo_%s_%s%s' % (side, F, seg), axis=(1, 0, 0), r=r, h=abs(L),
                                        sx=12, ch=False)[0]
                sph = cmds.polySphere(n='geo_%s_%s%s_knuckle' % (side, F, seg), r=r * 1.05, sx=12, sy=8, ch=False)[0]
                cmds.move(L * 0.5, 0, 0, cyl)
                tmp = cmds.group(cyl, sph, n='geo_%s_%s%s_grp' % (side, F, seg), p=geo_grp)
                cmds.xform(tmp, ws=True, piv=(0, 0, 0))
                cmds.xform(tmp, ws=True, m=cmds.xform(jn[i], q=True, ws=True, m=True))
                cmds.parentConstraint(jn[i], tmp, mo=True)
                cmds.sets([cyl, sph], e=True, forceElement=sg)


cmds.file(new=True, force=True)
cmds.createNode('transform', n='GeneratedRig')
geo = cmds.createNode('transform', n='GEO')
mtl = cmds.shadingNode('lambert', asShader=True, n='skin_mtl')
cmds.setAttr(mtl + '.color', 0.85, 0.62, 0.48, type='double3')
sg = cmds.sets(renderable=True, noSurfaceShader=True, empty=True, n='skin_SG')
cmds.connectAttr(mtl + '.outColor', sg + '.surfaceShader')

for side, sx in (('l', 1), ('r', -1)):
    hand = cmds.circle(n='ctl_%s_hand' % side, nr=(1, 0, 0), r=4, ch=False)[0]
    cmds.parent(hand, 'GeneratedRig')
    cmds.xform(hand, ws=True, t=(WRIST[0] * sx, WRIST[1], WRIST[2]))
    make_side(side, hand, geo, sg)
    palm = cmds.polyCube(n='geo_%s_palm' % side, w=8.0, h=1.3, d=7.2, ch=False)[0]
    cmds.xform(palm, ws=True, t=(65.6 * sx, 139.6, 0.1))
    arm = cmds.polyCylinder(n='geo_%s_wrist' % side, axis=(1, 0, 0), r=1.5, h=4, ch=False)[0]
    cmds.xform(arm, ws=True, t=(59.8 * sx, 139.6, 0.1))
    for g in (palm, arm):
        cmds.parent(g, geo)
        cmds.parentConstraint(hand, g, mo=True)
        cmds.sets(g, e=True, forceElement=sg)

cmds.setAttr('GEO.overrideEnabled', 1)
cmds.setAttr('GEO.overrideDisplayType', 2)      # reference, 方便点选控制器
cmds.viewSet('persp', home=True)
cmds.xform('persp', ws=True, t=(80, 158, 40))
cmds.viewPlace('persp', la=(68, 138.5, 0))
cmds.select(cl=True)
out = os.path.join(os.path.dirname(HERE), 'test_scene_clean.ma')
cmds.file(rename=out)
cmds.file(save=True, type='mayaAscii')
print('saved', out, 'fm nodes:', cmds.ls('fm_*'), 'registry:', cmds.objExists('fingerMaster_registry'))
maya.standalone.uninitialize()
