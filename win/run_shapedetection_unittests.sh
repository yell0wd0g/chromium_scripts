#!/bin/sh

CMD='./out/gn/service_unittests.exe \
--gtest_filter=*Detec* \
-vmodule=*detection*=2 
--enable-logging --v=1'


echo $CMD && eval $CMD

