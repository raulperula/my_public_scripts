#!/bin/bash

#==============================================================================
#title          :sincronizar_iphone.sh
#description    :This script sincronize an iphone mobile in Ubuntu.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :bash sincronizar_iphone.sh
#notes          :Based on the script done by Ubunteate (Christian Martínez).
#bash_version   :4.2.25(1)-release
#==============================================================================

clear
sudo add-apt-repository ppa:pmcenery/ppa
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install gvfs gvfs-backends gvfs-bin gvfs-fuse
sudo apt-get install libgvfscommon0 ifuse libgpod-dev libgpod-common libiphone-utils libiphone0 python-iphone libplist++1 libplist-utils python-plist libusb-1.0-0 libusb-1.0-0-dev
sudo apt-get install libusbmuxd1 usbmuxd gtkpod

sudo adduser $USER fuse
echo user_allow_other >> /etc/fuse.conf

sudo mkdir /mnt/ipod
sudo chmod 777 /mnt/ipod

clear
echo Escriba el comando sin espacios para conectar el iphone:
read conectar

clear
echo Escriba el comando sin espacios para desconectar el iphone:
read desconectar

clear
echo Escriba el comando sin espacios para conectar el iphone como root:
read root

clear
echo Escriba el comando sin espacios para sincronizar musica en el iphone:
read musica

clear
echo Escriba el comando sin espacios para sincronizar archivos en el iphone:
read archivos

clear
echo alias $conectar="'ifuse /mnt/ipod'" >> ~/.bashrc
echo alias $desconectar-iphone="'fusermount -u /mnt/ipod'" >> ~/.bashrc
echo alias $root="'ifuse /mnt/ipod –root'" >> ~/.bashrc
echo alias $musica="'gtkpod'" >> ~/.bashrc
echo alias $archivos="'sudo nautilus /mnt/ipod'" >> ~/.bashrc

source ~/.bashrc

clear
echo 'Para conectar el iphone use el comando $conectar o ifuse /mnt/ipod'
echo 'Para desconectar el iphone use el comando $descomentar o fusermount -u /mnt/ipod'
echo 'Para conectar el iphone como root use el comando $root o ifuse /mnt/ipod –root'
echo 'Para sincronizar musica en el iphone use el comando $musica o gtkpod'
echo 'Para sincronizar archivos en el iphone use el comando $archivos o sudo nautilus /mnt/ipod'
