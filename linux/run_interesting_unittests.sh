#!/bin/sh

CMD1="./out/gn/content_unittests \
--gtest_filter='\
VideoCapture*:\
DesktopCaptureDeviceTest.*:\
*VideoCapture*:\
ScreenCaptureDeviceTest.*:
MediaInternalsVideoCaptureDeviceTest.*:\
MediaStream*' \
-enable-logging=stderr \
-vmodule='*video*=3,*media*=3'"


CMD2="./out/gn/capture_unittests"

#CMD3="./out/gn/browser_tests \
#--gtest_filter='TabCaptureApiPixelTest.*' \
#--enable-logging=stderr \
#-vmodule='*video*=3,*media*=3'"

echo "----------------"
echo $CMD1
echo "----------------"
eval $CMD1 | ccze -A

echo "----------------"
echo $CMD2
echo "----------------"
eval $CMD2 | ccze -A

##echo "----------------"
##echo $CMD3
##echo "----------------"
##eval $CMD3
