#!/bin/bash

#==============================================================================
#title          :mov_to_avi.sh
#description    :This script convert to an avi codec.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash mov_to_avi.sh
#notes          :Install ffmepg and memcoder to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

# mov to avi
ffmpeg -i "$1" -sameq -vcodec msmpeg4v2 -acodec pcm_u8 "$2"1.avi
ffmpeg -i "$1" -s 480x340 -sameq -vcodec msmpeg4v2 -acodec libmp3lame "$2"2.avi
ffmpeg -i "$1" -sameq -vcodec msmpeg4v2 -acodec libmp3lame "$2"3.avi

mencoder "$1" -oac mp3lame -srate 22050 -ovc lavc -lavcopts vcodec=mjpeg -vf scale=480:340 -o "$2"4.avi
