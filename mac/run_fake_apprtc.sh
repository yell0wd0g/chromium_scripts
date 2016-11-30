#!/bin/sh

CMD='./out/gn/Chromium.app/Contents/MacOS/Chromium \
--blink-platform-log-channels=Media \
--enable-blink-features=MediaRecorder \
--use-fake-device-for-media-stream \
--use-fake-ui-for-media-stream \
--enable-logging=stderr \
--vmodule="*vpx*=3,*webm*=2,*media_stream*=3" \
http://appr.tc/?debug=loopback 2>&1 | 
sed -E -e "s/ERROR/ $(echo "\\033[31m"ERROR"\\033[0m"/g)" 
  -e "s/WARNING/ $(echo "\\033[0;32m"WARNING"\\033[0m"/g)" 
  -e "s/INFO/ $(echo "\\033[0;33m"INFO"\\033[0m"/g)" 
  -e "s/VERBOSE1/ $(echo "\\033[0;34m"VERBOSE1"\\033[0m"/g)"
  -e "s/VERBOSE2/ $(echo "\\033[0;35m"VERBOSE2"\\033[0m"/g)"
  -e "s/VERBOSE3/ $(echo "\\033[0;36m"VERBOSE3"\\033[0m"/g)" '

echo $CMD && eval $CMD
