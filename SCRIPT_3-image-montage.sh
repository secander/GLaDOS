#!/bin/bash
 
fn="$1"
#of=${fn%.*}.png
of="$2"
 
lf=`ffprobe -show_streams "$fn" 2> /dev/null | awk -F= '/^nb_frames/ { print $2-1 }'`
rm -f "*$of"
ffmpeg -i "$fn" -vf "select='eq(n,5)'" -vframes 1 "0_$of" 2> /dev/null
ffmpeg -i "$fn" -vf "select='eq(n,`expr $lf / 2`)'" -vframes 1 "1_$of" 2> /dev/null
ffmpeg -i "$fn" -vf "select='eq(n,`$lf - 5`)'" -vframes 1 "2_$of" 2> /dev/null
montage -geometry 512x256+0+0 "*_$of" $of
