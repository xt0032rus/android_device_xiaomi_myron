
#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8650-common
$(call inherit-product, device/xiaomi/sm8850-common/common.mk)

# Call miuicamera
$(call inherit-product, device/xiaomi/myron-miuicamera/device.mk)

# Device-specific audio routing
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/odm/resourcemanager_canoe_mtp.xml:$(TARGET_COPY_OUT_ODM)/etc/audio/sku_canoe/resourcemanager_canoe_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_canoe_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_mtp.xml \
    $(LOCAL_PATH)/configs/audio/audio_module_config_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_module_config_primary.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator-V1-ndk.vendor \
    vendor.qti.hardware.camera.offlinecamera-V2-ndk.vendor

# Properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/properties/odm_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_CN.prop \
    $(LOCAL_PATH)/configs/properties/odm_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/odm_GL.prop

# eUICC
PRODUCT_PACKAGES += \
    XiaomiEuicc \
    XiaomiEsimSwitcherResMyron

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Sensors
PRODUCT_PACKAGES += sensors.qsh_wrapper

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    ApertureOverlayMyron \
    FrameworksResMyron \
    NfcOverlayMyron \
    SettingsOverlayMyron \
    SettingsProviderOverlayMyron \
    SystemUIResMyron \
    EuiccResMyron \
    WifiOverlayMyron

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/myron/myron-vendor.mk)
