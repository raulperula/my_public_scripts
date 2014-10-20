#!/usr/bin/env python
# -*- coding: utf-8 -*-

#==============================================================================
#title          :split_vcf.py
#description    :This python script split a VCF file in different cards.
#author         :Raul Perula-Martinez <raules[at]gmail.com>
#date           :2014-10
#version        :1.0
#usage          :python split_vcf.py
#notes          :Use this script in the folder with the cards.
#python_version :2.7.3
#==============================================================================

import string
import time

def main():
    f = open("all.vcf","r")

    s = f.read()

    s1 = list(string.split(s,"\n\n"))
    for i in s1:
        n = 3+string.find(i,"N:;")
        n1 = n+string.find(i[n:],";")
        nombre = string.replace(i[n:n1]," ","")+".vcf"

        f1 = open(nombre,"w")
        f1.write(i)
        f1.close()

    f.close()

    return 0

if __name__ == '__main__':
    main()
