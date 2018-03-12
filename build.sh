#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=$(pwd)/../../../toolchains/arm64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export KONGJAK_KERNEL_VERSION=1.0

make kongjak_defconfig
make -j16

cp $(pwd)/arch/arm64/boot/Image.gz-dtb $(pwd)/zImage
