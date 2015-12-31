#
# Copyright (C) 2015 The CyanogenMod Project
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

# inherit from the proprietary version

LOCAL_PATH := device/motorola/quark

BOARD_VENDOR := motorola-qcom

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084
TARGET_NO_BOOTLOADER := true

USE_CLANG_PLATFORM_BUILD := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# Kernel

BOARD_KERNEL_CMDLINE := BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=400M
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
#Kernel pre mande
BOARD_CUSTOM_BOOTIMG_MK := device/motorola/quark/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0000000 --ramdisk_offset 0x01000000 --second_offset 0x0f00000 --tags_offset 0x0000100 --dt device/motorola/quark/dtb
TARGET_PREBUILT_KERNEL := device/motorola/quark/kernel
#if the above does not work uncomment below to build kernel from source
# clone CM kernel tree https://github.com/CyanogenMod/android_kernel_motorola_apq8084/
# and https://github.com/CyanogenMod/android_device_qcom_common
#kernel from source start
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#TARGET_KERNEL_SOURCE := kernel/motorola/apq8084
#TARGET_KERNEL_CONFIG := quark_defconfig
#BOARD_CUSTOM_BOOTIMG_MK := device/motorola/quark/mkbootimgcm.mk

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 40

# Partitions (set for 64 GB)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16793600
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57185009664
BOARD_CACHEIMAGE_PARTITION_SIZE := 3539992576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_SUPPRESS_SECURE_ERASE := true
ANDROID_COMMON_BUILD_MK := true
TW_DEFAULT_BRIGHTNESS := 63
TARGET_RECOVERY_QCOM_RTC_FIX := true
