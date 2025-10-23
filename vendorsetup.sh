#!/bin/bash
add_lunch_combo twrp_odin-eng
add_lunch_combo twrp_odin-user
add_lunch_combo twrp_odin-userdebug

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
