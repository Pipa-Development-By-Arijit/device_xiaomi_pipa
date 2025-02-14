#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from pipa device
$(call inherit-product, device/xiaomi/pipa/device.mk)

# Flags
TARGET_ENABLE_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := ARIJIT-SAHA
MATRIXX_CHIPSET := SM8250
MATRIXX_BATTERY := 8840mAh
MATRIXX_DISPLAY := 1800x2880

# Gapps
WITH_GMS := true
EXTRA_GAPPS := false

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

PRODUCT_NAME := lineage_pipa
PRODUCT_DEVICE := pipa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23043RP34G

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := pipa_global
PRODUCT_SYSTEM_DEVICE := pipa

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/pipa_global/pipa:13/TKQ1.221114.001/V14.0.8.0.TMZMIXM:user/release-keys
