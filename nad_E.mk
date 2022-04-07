#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common NusantaraOS stuff
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from E device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := 10or
PRODUCT_MODEL := 10or E
PRODUCT_DEVICE := E
PRODUCT_MANUFACTURER := 10or
PRODUCT_NAME := nad_E

PRODUCT_GMS_CLIENTID_BASE := android-huaqin

TARGET_VENDOR_PRODUCT_NAME := E

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="E-user 8.1.0 OPM1.171019.019 10or_E_V1_0_109 release-keys"

BUILD_FINGERPRINT := "google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys"
