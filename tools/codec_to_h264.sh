#!/bin/bash

#==============================================================================
#title          :codec_to_h264.sh
#description    :This script change the codec of a video.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0    
#usage		    :bash codec_to_h264.sh /media/HDD/ avi mp4 msmpeg4
#usage          :bash codec_to_h264.sh /media/HDD/
#notes          :Install libavcodec-extra-53 libav-tools to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

# erease result file
echo "Converted Files" > ToH264.result

#Get the forlder to search
fld="$1"

#Get the extension to look for if it exist, else look for "avi"
if [[ $2=="" ]]
then exti="avi"
else exti=$2
fi

#Get the outcome file extension if it exist, else set "mp4"
if [[ $3=="" ]]
#then exto="mp4"
then exto="avi"
else exto=$3
fi

#Get the codec to look for if it exists, else look for "msmpeg4"
if [[ $4=="" ]]
then cdc='msmpeg4'
else cdc=$4
fi

# exe the search and save the result in TpH264.tmp
find $fld  -name "*.$exti" > ToH264.tmp

#convert each result stored in the file ToH264.tmp if it use the specified codec and if the output file doesn't exist
while read line
do
   if [ x$(avprobe -show_streams "$line" 2> /dev/null| grep $cdc) != "x" ]
   then
           echo "Converting" $line
           echo "$line"  >> ToH264.result
           #avconv -stats -threads 8 -i "$line" -c:v libx264 -crf 20 -c:a copy "${line%.*}_new.$exto"
           avconv -stats -threads 8 -i "$line" -c:v libx264 -crf 20 -c:a libmp3lame -ar 44100 -aq 0  "${line%.*}_new.$exto"
   fi
done < ToH264.tmp

