#!/bin/sh

CMD="./out/gn/chrome \
--enable-logging=stderr \
-vmodule='*track_recorder*=3,*media_stream*=1,*webm_muxer*=1' \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
--enable-blink-features=GetUserMedia \
https://cdn.rawgit.com/Miguelao/demos/master/mediarecorder.html"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
