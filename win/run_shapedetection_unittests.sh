#!/bin/sh

CMD='./out/gn/service_unittests.exe \
--gtest_filter=*Detec* \
-vmodule=*shape_det*=2 
--enable-logging'


echo $CMD && eval $CMD

