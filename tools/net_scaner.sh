#!/bin/bash

#==============================================================================
#title          :net_scaner.sh
#description    :This script get the IPs connected to a net.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash net_scaner.sh
#notes          :Install arp-scan to use this script.
#bash_version   :4.2.25(1)-release
#==============================================================================


echo "Select network interface (eth0 [default], eth1, wlan0...):"
read NET

if [ ! -z $NET ] && [ $NET -eq 1 ]
then
    sudo arp-scan -I $NET -l
else
    sudo arp-scan -I eth0 -l
fi
