#!/bin/sh

FILE_DEFAULT=/p/videos/game1080p120fps.y4m
if [ -z $1 ]
then
FILE=$FILE_DEFAULT;
else
FILE=$1;
fi

CMD="./out/Release/chrome --enable-logging=stderr \
-vmodule=*video_capture_device*=3 \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
--use-file-for-fake-video-capture=$FILE \
--disable-gpu-vsync \
http://goo.gl/s2XhGB"

echo "$(tput setaf 3) Note: using [$FILE] and --disable-gpu-vsync $(tput sgr0)"
echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
