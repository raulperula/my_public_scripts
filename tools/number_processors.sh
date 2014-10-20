#!/bin/bash

#==============================================================================
#title          :number_processors.sh
#description    :This script get the number of processors in a system.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash mov_to_avi.sh
#notes          :
#bash_version   :4.2.25(1)-release
#==============================================================================

cat /proc/cpuinfo | grep processor | wc -l
