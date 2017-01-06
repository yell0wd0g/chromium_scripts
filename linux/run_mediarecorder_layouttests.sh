#!/bin/sh

for i in `ls third_party/WebKit/LayoutTests/fast/mediarecorder/*.html `;

do
  CMD="./out/gn/content_shell --run-layout-test $i -vmodule='*Recorder*=3'";
  echo $(tput setaf 2) $CMD $(tput sgr0);
  eval $CMD | ccze -A
done
