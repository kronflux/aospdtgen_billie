#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from billie device
$(call inherit-product, device/oneplus/billie/device.mk)

PRODUCT_DEVICE := billie
PRODUCT_NAME := lineage_billie
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="billie-user 11 RKQ1.201217.002 2205061852 release-keys"

BUILD_FINGERPRINT := OnePlus/billie/billie:11/RKQ1.201217.002/2205061852:user/release-keys
