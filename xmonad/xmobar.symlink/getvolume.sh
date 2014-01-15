#!/bin/bash
str=`amixer sget Master,0`
str1=${str#Simple*\[}
v1=${str1%%]*]}
str1=${str1#*dB\]}
il=`expr index "$str1" [o`
o="off"
mutel=''
if [ ${str1:$il:3} == $o ]; then mutel='M'; fi
v=${v1}\ $mutel
echo $v
