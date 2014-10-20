#!/bin/bash

#==============================================================================
#title          :mediainfo_folder.sh
#description    :This script get the media info of the files of a folder.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0    
#usage		    :bash mediainfo_folder.sh
#notes          :Install mediainfo to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

FILES="`pwd`"/*

for i in $FILES; do
    mediainfo --inform="General;%CompleteName%" "$i" && mediainfo --inform="Video;%CodecID/Hint%" "$i"
done
