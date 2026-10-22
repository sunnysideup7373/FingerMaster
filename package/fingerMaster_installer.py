# -*- coding: utf-8 -*-
"""Finger Master installer (called by install.mel).

Copies the script and icon into the Maya user folders and adds a shelf button
to the shelf that is currently open. Running it again updates the tool.
"""
import os
import shutil
import sys

import maya.cmds as cmds
import maya.mel as mel

TAG = 'fingerMaster'
OPEN_CMD = ('import importlib, fingerMaster as fm\n'
            'importlib.reload(fm)\n'
            'fm.ui()')
MENU = [
    ('Open Finger Master', OPEN_CMD),
    ('Build from selection',
     'import fingerMaster as fm\nfm.build_from_selection()\nfm.ui()'),
    ('Open example scene', 'import fingerMaster as fm\nfm.open_example()'),
    ('Uninstall Finger Master', 'import fingerMaster as fm\nfm.uninstall_tool()'),
]


def _shelf_button(icon):
    top = mel.eval('$fmTmp = $gShelfTopLevel')
    if not top or not cmds.tabLayout(top, exists=True):
        return None
    shelf = cmds.tabLayout(top, q=True, selectTab=True)
    # 已经装过: 删掉旧按钮 (所有工具架)
    for s in cmds.tabLayout(top, q=True, childArray=True) or []:
        for b in cmds.shelfLayout(s, q=True, childArray=True) or []:
            if cmds.objectTypeUI(b) == 'shelfButton' and cmds.shelfButton(b, q=True, docTag=True) == TAG:
                cmds.deleteUI(b)
    btn = cmds.shelfButton(parent=shelf, label='FingerMaster', imageOverlayLabel='',
                           annotation='Finger Master - hand / finger controls (right-click for more)',
                           image=icon, command=OPEN_CMD, sourceType='python', docTag=TAG,
                           menuItem=[(l, c) for l, c in MENU], menuItemPython=list(range(len(MENU))))
    mel.eval('saveAllShelves $gShelfTopLevel')
    return shelf


def install(src):
    scripts = cmds.internalVar(userScriptDir=True)
    icons = cmds.internalVar(userBitmapsDir=True)
    extra = os.path.join(cmds.internalVar(userAppDir=True), 'fingerMaster')
    for d in (scripts, icons, extra):
        if not os.path.isdir(d):
            os.makedirs(d)

    shutil.copy2(os.path.join(src, 'scripts', 'fingerMaster.py'), scripts)
    stale = os.path.join(scripts, 'fingerMaster.pyc')
    if os.path.isfile(stale):
        os.remove(stale)
    icon_src = os.path.join(src, 'icons', 'fingerMaster.png')
    shutil.copy2(icon_src, icons)
    example = os.path.join(src, 'example', 'test_scene_clean.ma')
    if os.path.isfile(example):
        shutil.copy2(example, extra)

    if scripts not in sys.path:
        sys.path.append(scripts)
    sys.modules.pop('fingerMaster', None)

    shelf = _shelf_button('fingerMaster.png')   # 在 prefs/icons 里, Maya 按文件名找
    import fingerMaster
    msg = 'Finger Master %s installed' % fingerMaster.__version__
    msg += (' on the "%s" shelf.' % shelf) if shelf else '.'
    print('[fingerMaster] %s  script: %s' % (msg, scripts))
    cmds.inViewMessage(amg='<hl>%s</hl>' % msg, pos='midCenter', fade=True, fadeStayTime=2500)
    fingerMaster.ui()
    return shelf
