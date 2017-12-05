#!/bin/bash

wget -O index.m3u8 $1


ts_files_count="$(/bin/cat index.m3u8 | grep -E prog_index* | wc -l)"
echo "${ts_files_count}"

for (( i = 0; i <= "$ts_files_count-1"; i++ )); do
        wget -O "$i.ts" "$2/prog_index$i.ts?app=com.netd"
done


for (( i = 0; i <= "$ts_files_count-1"; i++ )); do
        ts_files+="$i.ts|"
done

correct_ts_list=${ts_files::-1}
echo $correct_ts_list

eval "ffmpeg -y -i "\"concat:$correct_ts_list"\" -c copy -bsf:a aac_adtstoasc $3.mp4"

rm *.ts
rm index.m3u8
