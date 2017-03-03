#!/bin/sh

CMD="./out/gn/chrome \
-vmodule='*html_*_element_capturer*=2,*HTMLMediaElementCapture*=1' \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
--enable-blink-features=MediaCaptureFromVideo \
https://codepen.io/miguelao/pen/OpXVVK?editors=1010"
#https://rawgit.com/Miguelao/demos/master/videoelementcapture.html"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
