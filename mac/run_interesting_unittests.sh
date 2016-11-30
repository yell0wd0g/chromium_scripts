#!/bin/sh

CMD2='./out/gn/content_unittests --gtest_filter="VideoCaptureManagerTest.*:VideoCaptureImplTest.*:VideoCaptureBufferPoolTest.*:VideoCaptureControllerTest.*:VideoCaptureHostTest.*:WebContentsVideoCaptureDeviceTest.*:ScreenCaptureDeviceTest.*"'
CMD3='./out/gn/media_unittests --gtest_filter="VideoCaptureDeviceTest.*" --enable-logging=stderr -vmodule="*/content/renderer/media/media*=1,*/content/browser/renderer_host/media*=1,*/media/video/capture/*=1"'

echo $CMD2
eval $CMD2
echo $CMD3
eval $CMD3
