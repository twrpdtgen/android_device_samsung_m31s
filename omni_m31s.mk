#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m31s device
$(call inherit-product, device/samsung/m31s/device.mk)

PRODUCT_DEVICE := m31s
PRODUCT_NAME := omni_m31s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M317F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m31snsxx-user 12 SP1A.210812.016 M317FXXS5DXA1 release-keys"

BUILD_FINGERPRINT := samsung/m31snsxx/m31s:12/SP1A.210812.016/M317FXXS5DXA1:user/release-keys
