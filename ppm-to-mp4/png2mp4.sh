#!/bin/sh
# usage: png2mp4.sh <input png file names> <output mp4 file name>
# example: png2mp4.sh frames/frame.0%4d.png out.mp4 
#
# where "ppm" is the source format
#    and "./frames" is where the source files are.
# Author: Yuhang(Steven) Wang
# Date: 10/21/2016
# License: MIT/X11
# ==================================================================

inputs=$1
output=$2
echo $inputs
ffmpeg -i $inputs -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -f mp4 -vcodec libx264 -pix_fmt yuv420p $output
