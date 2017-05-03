#!/bin/sh

CMD="./out/gn/chrome \
-vmodule='*ImageCapture*=2,*image_capture*=1' \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
https://rawgit.com/yellowdoge/demos/master/imagecapture.html"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
