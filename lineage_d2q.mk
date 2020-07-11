#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d2q device
$(call inherit-product, device/samsung/d2q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_d2qzh
PRODUCT_DEVICE := d2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N9750
PRODUCT_MANUFACTURER := samsung

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "samsung/d2qzh/d2q:10/QP1A.190711.020/N9750ZSU2CTF1:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=d2q \
    PRODUCT_NAME=d2qzh \
    PRIVATE_BUILD_DESC="d2qzh-user 10 QP1A.190711.020 N9750ZSU2CTF1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
