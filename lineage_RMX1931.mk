#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from RMX1931 device
$(call inherit-product, device/realme/RMX1931/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX1931
PRODUCT_DEVICE := RMX1931L1
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX1931
PRODUCT_MANUFACTURER := Realme

# Build info
BUILD_FINGERPRINT := "realme/RMX1931/RMX1931L1:11/RKQ1.200928.002/1634728216537:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=RealmeX2Pro \
    PRODUCT_NAME=RealmeX2Pro \
    PRIVATE_BUILD_DESC="RMX1931-user 11 RKQ1.200928.002 1634728216537 release-keys"

# TODO: Check if this is correct
PRODUCT_GMS_CLIENTID_BASE := android-realme
