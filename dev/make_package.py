# -*- coding: utf-8 -*-
"""mayapy make_package.py  ->  dist/FingerMaster_v<version>.zip

FingerMaster/
  install.mel                 拖进 Maya 视窗安装
  fingerMaster_installer.py
  README.txt
  scripts/fingerMaster.py
  icons/fingerMaster.png
  example/test_scene_clean.ma
"""
import os
import shutil
import sys
import zipfile

os.environ.setdefault('QT_QPA_PLATFORM', 'offscreen')
import maya.standalone
maya.standalone.initialize()

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, ROOT)
import fingerMaster as fm
from PySide6 import QtCore, QtGui, QtWidgets

app = QtWidgets.QApplication.instance() or QtGui.QGuiApplication.instance() or QtGui.QGuiApplication([])

DIST = os.path.join(ROOT, 'dist')
PKG = os.path.join(DIST, 'FingerMaster')
if os.path.isdir(PKG):
    shutil.rmtree(PKG)
for d in ('scripts', 'icons', 'example'):
    os.makedirs(os.path.join(PKG, d))

# 图标: 和面板同样的手, 食指高亮
def icon(size, path):
    img = QtGui.QImage(size, size, QtGui.QImage.Format_ARGB32)
    img.fill(QtCore.Qt.transparent)
    p = QtGui.QPainter(img)
    p.setRenderHint(QtGui.QPainter.Antialiasing)
    p.setPen(QtCore.Qt.NoPen)
    p.setBrush(QtGui.QColor('#2f3237'))
    r = QtCore.QRectF(1, 1, size - 2, size - 2)
    p.drawRoundedRect(r, size * 0.18, size * 0.18)
    state = fm.preset_state({'relax': 3, 'spread': 2})
    state['Middle']['curl'] = [25, 30, 20]
    state['Ring']['curl'] = [45, 55, 35]
    state['Pinky']['curl'] = [60, 70, 45]
    fm.paint_hand(p, r.adjusted(size * 0.04, size * 0.06, -size * 0.04, -size * 0.04), state, 'l',
                  selected='Index', small=True)
    p.end()
    img.save(path)

icon(64, os.path.join(PKG, 'icons', 'fingerMaster.png'))

shutil.copy2(os.path.join(ROOT, 'fingerMaster.py'), os.path.join(PKG, 'scripts'))
shutil.copy2(os.path.join(ROOT, 'test_scene_clean.ma'), os.path.join(PKG, 'example'))
for f in ('install.mel', 'fingerMaster_installer.py', 'README.txt', 'README_ja.txt'):
    shutil.copy2(os.path.join(ROOT, 'package', f), PKG)
shutil.copy2(os.path.join(ROOT, 'LICENSE'), PKG)

zpath = os.path.join(DIST, 'FingerMaster_v%s.zip' % fm.__version__)
if os.path.isfile(zpath):
    os.remove(zpath)
with zipfile.ZipFile(zpath, 'w', zipfile.ZIP_DEFLATED) as z:
    for base, _, files in os.walk(PKG):
        for f in files:
            full = os.path.join(base, f)
            z.write(full, os.path.relpath(full, DIST))
print('package:', zpath, os.path.getsize(zpath) // 1024, 'KB')
for n in zipfile.ZipFile(zpath).namelist():
    print('  ', n)
maya.standalone.uninitialize()
