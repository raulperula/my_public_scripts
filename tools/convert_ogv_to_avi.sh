#!/bin/bash

#==============================================================================
#title          :ogv_to_avi.sh
#description    :This script convert to an avi codec.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash ogv_to_avi.sh
#notes          :Install memcoder to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

# ogv to avi
mencoder "$1" -ovc xvid -oac mp3lame -xvidencopts pass=1 -o "$2"

# Call this with multiple arguments
# for example : ls *.{ogv,OGV} | xargs ogv2avi
# N=$#;
# echo "Converting $N files !"
# for ((i=0; i<=(N-1); i++))
# do
# echo "converting" $1
# filename=${1%.*}
# mencoder "$1" -ovc xvid -oac mp3lame -xvidencopts pass=1 -o $filename.avi
# shift 1
# done
