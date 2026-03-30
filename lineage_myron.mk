#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Poco F8 Ultra device.
$(call inherit-product, device/xiaomi/myron/device.mk)

## Device identifier
PRODUCT_DEVICE := myron
PRODUCT_NAME := lineage_myron
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco F8 Ultra
PRODUCT_MANUFACTURER := xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi