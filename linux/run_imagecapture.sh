#!/bin/sh

CMD="./out/gn/chrome \
-vmodule='*ImageCapture*=2,*image_capture*=1' \
--use-fake-ui-for-media-stream \
--enable-blink-features=ImageCapture \
https://rawgit.com/Miguelao/demos/master/imagecapture.html"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
