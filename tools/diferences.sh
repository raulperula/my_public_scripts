#!/bin/bash

#==============================================================================
#title          :kdiff_differences.sh
#description    :This script check differences between several files.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0    
#usage		    :bash kdiff_differences.sh
#notes          :Install kdiff3 to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================

kdiff3 $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
