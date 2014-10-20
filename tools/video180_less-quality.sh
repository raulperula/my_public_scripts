#!/bin/bash

#==============================================================================
#title          :video180_less-quality.sh
#description    :This script turn 180 degrees a video (with less quality).
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash video180_less-quality.sh
#notes          :Install memcoder to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

for i in $1; do
    mencoder -ovc lavc -vf rotate=1 -oac pcm $i -o tmp_$i;
    mencoder -ovc lavc -vf rotate=1 -oac pcm tmp_$i -o final_$i;
    rm tmp_$i;
done
