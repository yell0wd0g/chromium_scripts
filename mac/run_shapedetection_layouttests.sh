#!/bin/sh

for i in `ls third_party/WebKit/LayoutTests/shapedetection/**.html third_party/WebKit/LayoutTests/*/shapedetection/**.html `; 
do 
  CMD="./out/gn/Content\ Shell.app/Contents/MacOS/Content\ Shell --enable-blink-features=ShapeDetection  --run-layout-test $i -vmodule='*shapede*=3'";
  echo "\\033[0;34m" $CMD "\\033[0m";
  eval $CMD | sed -E -e "s/FAIL/ $(echo "\\033[31m"FAIL"\\033[0m"/g)" -e "s/PASS/ $(echo "\\033[0;32m"PASS"\\033[0m"/g)";
done

CMD="third_party/WebKit/Tools/Scripts/run-webkit-tests --debug --verbose third_party/WebKit/LayoutTests/http/tests/shapedetection/shapedetection*.html -t gn";
echo "\\033[0;34m" $CMD "\\033[0m";
eval $CMD | sed -E -e "s/FAIL/ $(echo "\\033[31m"FAIL"\\033[0m"/g)" -e "s/PASS/ $(echo "\\033[0;32m"PASS"\\033[0m"/g)";
  
