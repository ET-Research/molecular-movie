#!/bin/sh
# usage: ppm2png.sh <name of the directory where ppm files can be found>
# example: ppm2png.sh ./frames
# where "./frames" is where the source files are.
# Author: Yuhang(Steven) Wang
# Date: 10/21/2016
# License: MIT/X11
# =====================================================

old_format=ppm
input_dir=$1
new_format=png

for f in `ls -rt $input_dir/*$old_format`; do
    output=$(echo $f | sed s/$old_format/$new_format/)
    echo $output
    convert $f $output
done
