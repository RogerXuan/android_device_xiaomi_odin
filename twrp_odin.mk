#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from odin device
$(call inherit-product, device/xiaomi/odin/device.mk)

PRODUCT_DEVICE := odin
PRODUCT_NAME := twrp_odin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2106118C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="odin-user 13 RKQ1.211001.001 V14.0.4.0.TKMCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/odin/odin:13/RKQ1.211001.001/V14.0.4.0.TKMCNXM:user/release-keys
