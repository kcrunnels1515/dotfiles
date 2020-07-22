#!/bin/bash
ffmpeg -y \
-f x11grab \
-s $(xdpyinfo | grep dimensions | awk '{print $2}') \
-i :0.0 \
-f alsa -i default \
-c:v libx264 -c:a flac $1
