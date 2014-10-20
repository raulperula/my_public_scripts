#!/bin/bash

#==============================================================================
#title          :find_duplicates.sh
#description    :This script find duplicate files.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0    
#usage		    :bash find_duplicates.sh
#notes          :Install fdupes to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

fdupes -r .

