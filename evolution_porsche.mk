#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from porsche device
$(call inherit-product, device/realme/porsche/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Evolution X Extras
EVO_BUILD_TYPE := RELEASE
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_TOUCHGESTURES := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_INCLUDE_GRAMOPHONE := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_USES_PICO_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

PRODUCT_NAME := evolution_porsche
PRODUCT_DEVICE := porsche
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3312

PRODUCT_SYSTEM_NAME := RE58B2L1
PRODUCT_SYSTEM_DEVICE := RE58B2L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 13 TP1A.220905.001 1701695584839 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3312/RE58B2L1:13/TP1A.220905.001/S.14fda1d_59162-1:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
