#!/bin/sh

CMD='./out/gn/Chromium.app/Contents/MacOS/Chromium \
--enable-blink-features=MediaCaptureFromVideo \
--allow-file-access-from-files \
-vmodule="*media_stream*=3,*renderer_blink_platform*=1,*webaudiosourceprovider_impl*=2,*html_audio_element*=1,*track_audio_renderer*=1" \
https://rawgit.com/Miguelao/demos/master/videoelementcapture.html'

echo $CMD && eval $CMD

