#!/usr/bin/python

#==============================================================================
#title          :convert_to_png.py
#description    :This python script convert an image to png format.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :python convert_to_png.py
#notes          :
#python_version :2.7.3
#==============================================================================

import os
import sys

def new_name(file):
    os.path.splitext(file)
    return '.'.join([os.path.splitext(file)[0],'png'])

files = sys.argv[1:]

for file in files:
    os.system('convert "%s" "%s"' % (file, new_name(file)))

