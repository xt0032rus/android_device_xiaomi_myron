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
PRODUCT_MANUFACTURER := Xiaomi

TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_DISABLE_EPPE := true

INFINITY_MAINTAINER := xt0032rus
WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="myron-user 17 CP2A.260605.016 OS4.0.0.15.XPMCNXM release-keys" \
    BuildFingerprint=Redmi/myron/myron:17/CP2A.260605.016/OS4.0.0.15.XPMCNXM:user/release-keys \
    DeviceName=myron \
    DeviceProduct=myron \
    SystemDevice=missi \
    SystemName=missi
