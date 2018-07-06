#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=$(pwd)/../../../toolchains/arm64/linaro-4.9/bin/aarch64-linux-gnu-
export KONGJAK_KERNEL_VERSION=1.4

make kongjak_defconfig
sed -i s/-Kongjak-Kernel/-Kongjak-Kernel-${KONGJAK_KERNEL_VERSION}/g $(pwd)/.config
make -j16

cp $(pwd)/arch/arm64/boot/Image.gz-dtb $(pwd)/zImage
