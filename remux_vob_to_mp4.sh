#!/bin/bash

FFMPEG='c:\temp\ffmpeg-20180216-310d56e-win64-static\bin\ffmpeg.exe'
INPUT_FILE='c:\temp\VTS_01_1.VOB'
#INPUT_FILE='c:\temp\1.VOB'
#OUTPUT_FILE='c:\temp\out.mp4'
#TITLE='Wesele Mañka i Marzeny'
#TITLE='Tytul testowy'
# -metadata title="${TITLE}"

#${FFMPEG} -i "${INPUT_FILE}" -codec:v copy -codec:a copy "${OUTPUT_FILE}"
#${FFMPEG} -i "${INPUT_FILE}" -codec:v h264 -codec:a copy "${OUTPUT_FILE}"



#${FFMPEG} -i "${INPUT_FILE}" -codec:v h264 -codec:a aac "c:/temp/h264__aac__out.mp4"

#${FFMPEG} -i "${INPUT_FILE}" -codec:v h264 -codec:a aac -pix_fmt yuv420p "c:/temp/h264_yuv420p__aac__out.mp4"


${FFMPEG} -i "${INPUT_FILE}" -f avi -c:v mpeg4 -b:v 800k -g 300 -bf 2 -c:a libmp3lame -b:a 128k "c:/temp/mpeg4_out.avi"

#ffmpeg  -thread_queue_size 512 -i <input device> -f alsa -thread_queue_size 512 -i <input device> -t <duration of video> -c:v h264 -c:a aac -pix_fmt yuv420p <output filename>
