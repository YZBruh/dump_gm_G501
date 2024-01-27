#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from G501 device
$(call inherit-product, device/general/G501/device.mk)

PRODUCT_DEVICE := G501
PRODUCT_NAME := lineage_G501
PRODUCT_BRAND := GM
PRODUCT_MODEL := G501
PRODUCT_MANUFACTURER := general

PRODUCT_GMS_CLIENTID_BASE := android-telpa-trev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k71v1_64_bsp-user 11 RP1A.200720.011 1636518238 release-keys"

BUILD_FINGERPRINT := GM/G501_S/G501:11/RP1A.200720.011/1636518238:user/release-keys
