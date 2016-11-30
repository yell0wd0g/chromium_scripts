#!/bin/sh

FILE_DEFAULT=/usr/local/google/home/mcasas/Videos/720p5994_stockholm_ter.y4m
if [ -z $1 ]
then
FILE=$FILE_DEFAULT;
else
FILE=$1;
fi

CMD="./out/gn/chrome --enable-logging=stderr \
-vmodule=*video_capture*=1,*video_capture_controller*=2 \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
--use-file-for-fake-video-capture=$FILE \
http://goo.gl/qdwf6 http://goo.gl/s2XhGB http://goo.gl/8PjA1d"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
