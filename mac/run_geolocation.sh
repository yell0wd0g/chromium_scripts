#!/bin/sh

CMD='./out/gn/Chromium.app/Contents/MacOS/Chromium \
-vmodule="*geolocation*=1,*render_frame_host*=1,*location*=1" \
https://rawgit.com/Miguelao/demos/master/geolocation.html'

echo $CMD && eval $CMD

