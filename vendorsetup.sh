#!/bin/bash

if [[ $(echo -n $TARGET_PRODUCT | sed -e 's/^aosp_//g') = "sweet" ]]; then

#
# Comment out KernelSU's code since kprobes doesn't work properly
#
# Ref:
# https://kernelsu.org/guide/how-to-integrate-for-non-gki.html#integrate-with-kprobe
#
if [ -f "kernel/modules/misc/KernelSU/kernel/ksu.c" ]; then
    sed -i 's/	ksu_enable_sucompat();/	\/\/ksu_enable_sucompat();/g' kernel/modules/misc/KernelSU/kernel/ksu.c
    sed -i 's/	ksu_enable_ksud();/	\/\/ksu_enable_ksud();/g' kernel/modules/misc/KernelSU/kernel/ksu.c
fi

fi
