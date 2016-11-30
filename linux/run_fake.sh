#!/bin/sh

CMD="./out/gn/chrome --enable-logging=stderr \
-vmodule=*video*=1 \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
https://rawgit.com/Miguelao/demos/master/gum_resolutions.html"

echo $(tput setaf 2) $CMD $(tput sgr0)
eval $CMD
