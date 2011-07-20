# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

TARGET_USES_OLD_LIBSENSORS_HAL := true
TARGET_HAS_POINTERCAL := true

BOARD_NO_RGBX_8888 := true

TARGET_NO_BOOTLOADER := true

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/v9/recovery_kernel

BOARD_KERNEL_CMDLINE := androidboot.hardware=v9 console=null g_android.product_id=0x1354 g_android.serial_number=V9-CM7

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := v9

BOARD_HAVE_BLUETOOTH := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4708

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

WITH_JIT := true
ENABLE_JSC_JIT := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

JS_ENGINE := v8

# OpenGL drivers config file path
BOARD_EGL_CFG := device/zte/v9/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

# GPS Related Defines
BOARD_GPS_LIBRARIES := libloc
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true

#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := v9
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

BOARD_KERNEL_BASE := 0x02600000
#BOARD_PAGE_SIZE := 0x00000800

TARGET_PROVIDES_LIBRIL := true
TARGET_PROVIDES_LIBAUDIO := true

BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/v9/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun

BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# # cat /proc/mtd
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 02580000 00020000 "cache"
# mtd5: 0dc00000 00020000 "system"
# mtd6: 0a280000 00020000 "userdata"
# mtd7: 01500000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"


BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0cf80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d020000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/v9/recovery/recovery_ui.c
