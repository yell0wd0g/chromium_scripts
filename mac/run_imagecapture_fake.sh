#!/bin/sh

CMD='./out/gn/Chromium.app/Contents/MacOS/Chromium \
--enable-blink-features=ImageCapture \
-vmodule="*image_capture*=3,*video_capture_manager*=3,*ImageCapture*=2,*video_capture_device*=2" \
--allow-file-access-from-files \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
https://rawgit.com/Miguelao/demos/master/imagecapture.html'

echo $CMD && eval $CMD

