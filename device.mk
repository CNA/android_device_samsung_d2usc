#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/d2usc/d2usc-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2usc/overlay

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/d2usc/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/samsung/d2usc/modules/btlock.ko:/system/lib/modules/btlock.ko \
    device/samsung/d2usc/modules/dhd.ko:/system/lib/modules/dhd.ko \
    device/samsung/d2usc/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    device/samsung/d2usc/modules/evbug.ko:/system/lib/modules/evbug.ko \
    device/samsung/d2usc/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/samsung/d2usc/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    device/samsung/d2usc/modules/qce40.ko:/system/lib/modules/qce40.ko \
    device/samsung/d2usc/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    device/samsung/d2usc/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    device/samsung/d2usc/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    device/samsung/d2usc/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    device/samsung/d2usc/modules/spidev.ko:/system/lib/modules/spidev.ko

## common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/d2-common/overlay-cdma

# Inherit from d2-common
$(call inherit-product, device/samsung/d2-common/d2-common.mk)

$(call inherit-product-if-exists, vendor/samsung/d2usc/d2usc-vendor.mk)
