#!/bin/sh

CMD1="./out/gn/content_unittests \
--gtest_filter='\
VideoCaptureBufferPoolTest.*:\
VideoCaptureControllerTest.*:\
VideoCaptureHostTest.*:\
VideoCaptureManagerTest.*:\
DesktopCaptureDeviceTest.*:\
WebContentsVideoCaptureDeviceTest.*:\
ScreenCaptureDeviceTest.*:
VideoCaptureImplTest.*:\
VideoCaptureMessageFilterTest.*:\
MediaStreamDispatcherHostTest.*:\
MediaInternalsVideoCaptureDeviceTest.*:\
MediaStreamDispatcherTest.*:\
MediaStreamImplTest.*:\
MediaStreamManagerTest.*:\
MediaStreamUIProxyTest.*:\
MediaStreamRemoteVideoSourceTest.*:\
MediaStreamVideoSourceTest.*\
MediaStreamVideoCapturerSourceTest.*' \
-enable-logging=stderr \
-vmodule='*video*=3,*media*=3'"


CMD2="./out/gn/media_unittests \
--gtest_filter='*FakeVideoCaptureDeviceTest.*' \
--enable-logging=stderr \
-vmodule='*video*=1'"

#CMD3="./out/gn/browser_tests \
#--gtest_filter='TabCaptureApiPixelTest.*' \
#--enable-logging=stderr \
#-vmodule='*video*=3,*media*=3'"

echo "----------------"
echo $CMD1
echo "----------------"
eval $CMD1

echo "----------------"
echo $CMD2
echo "----------------"
eval $CMD2

##echo "----------------"
##echo $CMD3
##echo "----------------"
##eval $CMD3
