#!/bin/bash

case "$1" in
	aarch64_*)
		META_CORE_ARCH="linux-arm64"
		;;
	arm_*_neon-vfp*)
		META_CORE_ARCH="linux-armv7"
		;;
	arm_*_neon|arm_*_vfp*)
		META_CORE_ARCH="linux-armv6"
		;;
	arm*)
		META_CORE_ARCH="linux-armv5"
		;;
	i386_*)
		META_CORE_ARCH="linux-386"
		;;
	mips64_*)
		META_CORE_ARCH="linux-mips64"
		;;
	mips_*)
		META_CORE_ARCH="linux-mips-softfloat"
		;;
	mipsel_*)
		META_CORE_ARCH="linux-mipsle-softfloat"
		;;
	x86_64)
		META_CORE_ARCH="linux-amd64"
		;;
	*)
		META_CORE_ARCH="0"
		;;
esac

BUILD_PWD_DIR=$2

META_DOWNLOAD_FILE="${BUILD_PWD_DIR}/clash_meta.tar.gz"
META_CORE_PATH="${BUILD_PWD_DIR}/root/etc/openclash/core/clash_meta"
META_TMP_PATH="${BUILD_PWD_DIR}/clash"

META_CORE_DOWNLOAD_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-${META_CORE_ARCH}.tar.gz"


wget "$META_CORE_DOWNLOAD_URL" -O "$META_DOWNLOAD_FILE" || exit -1

if [ -s "$META_DOWNLOAD_FILE" ]; then
    tar zxvfo "$META_DOWNLOAD_FILE" -C "$BUILD_PWD_DIR" || exit -1
    chmod 4755 "$META_TMP_PATH"
    mv "$META_TMP_PATH" "$META_CORE_PATH"

else
    echo "clash-${META_CORE_ARCH}.tar.gz download fail"
    exit -1
fi







