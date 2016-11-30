#!/bin/sh
CMD="\
git cl try -m master.tryserver.chromium.linux   -b linux_chromium_compile_rel_ng -b linux_chromium_rel_ng && \
git cl try -m master.tryserver.chromium.android -b android_compile_rel -b linux_android_rel_ng && \
git cl try -m master.tryserver.chromium.mac     -b mac_chromium_compile_rel_ng -b mac_chromium_rel_ng && \
git cl try -m master.tryserver.chromium.win     -b win_chromium_rel_ng -b win_chromium_compile_rel_ng && \
git cl try -m master.tryserver.chromium.linux   -b cast_shell_linux && \
git cl try -m master.tryserver.chromium.android -b cast_shell_android -b android_clang_dbg_recipe && \
git cl try -m master.tryserver.chromium.linux  -b linux_chromium_chromeos_rel_ng -b linux_chromium_chromeos_compile_rel_ng && \
git cl try -m master.tryserver.chromium.linux  -b linux_chromium_asan_rel_ng && \
git cl try -m master.tryserver.chromium.mac    -b mac_chromium_asan_rel_ng"


echo $CMD && eval $CMD


