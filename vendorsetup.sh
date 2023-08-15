#!/bin/bash

# Clone Kernel Modules repo
if [ ! -d "kernel/modules" ]; then
    mkdir -p kernel/modules
    touch kernel/modules/Android.mk
fi

# Clone KernelSU repo
if [ ! -d "kernel/modules/misc/KernelSU" ]; then
    git clone https://github.com/tiann/KernelSU kernel/modules/misc/KernelSU
fi

# Update KernelSU repo
if [ -d "kernel/modules/misc/KernelSU" ]; then
    cd kernel/modules/misc/KernelSU
    git reset --hard
    git fetch origin
    git pull origin main
    cd ../../../../
fi

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

# gralloc build fix
if [ -d "vendor/qcom/opensource/commonsys-intf/display" ]; then
    cd vendor/qcom/opensource/commonsys-intf/display
    git reset --hard
    cd ../../../../../
fi

if [ -f "vendor/qcom/opensource/commonsys-intf/display/gralloc/gralloc_priv.h" ]; then
    sed -i 's/return (x + (getpagesize() - 1)) \& \~(getpagesize() - 1)\;/return (x + ((unsigned long) getpagesize() - 1UL)) \& \~((unsigned long) getpagesize() - 1UL)\;/g' vendor/qcom/opensource/commonsys-intf/display/gralloc/gralloc_priv.h
fi
