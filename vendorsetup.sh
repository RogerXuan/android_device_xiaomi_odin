#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

FDEVICE="odin"

# ============================================
# OrangeFox Build Variables for Xiaomi Odin
# ============================================

# Basic Configuration
export FOX_BUILD_DEVICE=odin
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

# A/B Device Configuration
export FOX_AB_DEVICE=1
export OF_PATCH_AVB20=1
export OF_DEFAULT_KEYMASTER_VERSION=4.0

# Shell and Tools
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_DATE_BINARY=1
export FOX_DELETE_AROMAFM=1

# Recovery Partition (for dynamic partitions)
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"

# UI Configuration (必须设置)
export TW_MAX_BRIGHTNESS=2047
export TW_DEFAULT_BRIGHTNESS=1200
export OF_SCREEN_H=3200
export OF_STATUS_H=72

# Display Language
export TW_DEFAULT_LANGUAGE="zh_CN"

# Version
export FOX_MAINTAINER_PATCH_VERSION="1"

# Optional: Disable unused features to reduce size
export TW_EXCLUDE_TZDATA=true
export TW_EXCLUDE_LPDUMP=true

export OF_MAINTAINER="Roger"

export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_NO_MIUI_PATCH_WARNING=1
export FOX_USE_SED_BINARY=1
export OF_ENABLE_LPTOOLS=1
export FOX_USE_NANO_EDITOR=1
export OF_QUICK_BACKUP_LIST="/boot;/super;"
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1616300800"
export OF_KEEP_DM_VERITY=1
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_UNBIND_SDCARD_F2FS=1
export OF_PATCH_VBMETA_FLAG="1"
export OF_VANILLA_BUILD=1
export OF_DYNAMIC_FULL_SIZE=9126805504

# UI相关变量
export OF_HIDE_NOTCH=1
export OF_CLOCK_POS=1
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
        export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v28.1.zip
	export TARGET_DEVICE_ALT="bhima"
        [ "$FOX_BUILD_TYPE" = "Stable" ] && export OF_ADVANCED_SECURITY=1;
else
	if [ -z "$FOX_BUILD_DEVICE" -a -z "$BASH_SOURCE" ]; then
		echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
	fi
fi
