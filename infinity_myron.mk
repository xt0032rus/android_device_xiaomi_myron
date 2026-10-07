#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from myron device.
$(call inherit-product, device/xiaomi/myron/device.mk)

## Device identifier
PRODUCT_DEVICE := myron
PRODUCT_NAME := infinity_myron
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 25102RKBEC
PRODUCT_MANUFACTURER := xiaomi

WITH_GAPPS := true
TARGET_HAS_UDFPS := true
INFINITY_MAINTAINER := xt0032rus

BUILD_FINGERPRINT := Redmi/myron/myron:17/CP2A.260605.016/OS4.0.0.33.XPMCNXM:user/release-keys
