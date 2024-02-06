#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common TheParasiteProject stuffs.
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_CARRIER_SERVICES := true
TARGET_INCLUDE_CARRIER_SETTINGS := true
TARGET_INCLUDE_CAMERA_GO := true
TARGET_SUPPORTS_LILY_EXPERIENCE := true
TARGET_NOT_SUPPORTS_GOOGLE_BATTERY := true
MAINLINE_INCLUDE_VIRT_MODULE := false
TARGET_GBOARD_KEY_HEIGHT := 1.2
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_USES_AOSP_RECOVERY := true

PRODUCT_NAME := aosp_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K6G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-google

BUILD_FINGERPRINT := Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys"
