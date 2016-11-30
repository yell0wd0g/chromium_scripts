#!/bin/sh

CMD='./out/gn/Chromium.app/Contents/MacOS/Chromium \
--enable-blink-features=ShapeDetection \
--allow-file-access-from-files \
--use-fake-ui-for-media-stream \
https://codepen.io/miguelao/pen/ORYbbm'

echo $CMD && eval $CMD

