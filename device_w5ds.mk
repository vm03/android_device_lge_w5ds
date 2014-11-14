#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/w5ds/overlay

PRODUCT_PACKAGES += Torch

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=w5ds \
    ro.product.model=LG-D325 \
    persist.radio.multisim.config=dsds \
    ro.sf.lcd_density=240

PRODUCT_COPY_FILES += \
    device/lge/w5ds/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit from msm8610-common
$(call inherit-product, device/lge/msm8610-common/msm8610.mk)
