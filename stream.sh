#!/bin/sh
set -eu

while true; do
  ffmpeg -hide_banner -loglevel info \
    -re \
    -stream_loop -1 -i /media/clip.mp4 \
    -c:v h264_nvenc -preset p4 \
    -b:v 4500k -maxrate 4500k -bufsize 9000k \
    -g 120 -keyint_min 120 \
    -pix_fmt yuv420p \
    -c:a aac -b:a 160k -ar 48000 \
    -f flv "${TWITCH_RTMP}/${TWITCH_STREAM_KEY}"

  echo "FFmpeg terminó (corte Twitch/red). Reiniciando en 2s..."
  sleep 2
done
