# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Platform
TARGET_BOARD_PLATFORM := msm8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420

# Kernel
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=400M androidboot.selinux=permissive user_debug=23
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
#Kernel pre-made
BOARD_CUSTOM_BOOTIMG_MK := device/motorola/quark/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0000000 --ramdisk_offset 0x01000000 --second_offset 0x0f00000 --tags_offset 0x0000100 --dt device/motorola/quark/dtb
TARGET_PREBUILT_KERNEL := device/motorola/quark/kernel
#if the prebuild kernel not work make a new one use as base my tree or check CM/Motorola
# my tree https://github.com/bhb27/android_kernel_motorola_apq8084/commits/TWRP
# to build the kernel run how_to_build_this.sh
#kernel from source start
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#TARGET_KERNEL_SOURCE := kernel/motorola/apq8084
#TARGET_KERNEL_CONFIG := quark_defconfig
#BOARD_CUSTOM_BOOTIMG_MK := device/motorola/quark/mkbootimgcm.mk

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

# Init of the devices boots under 1s but just in case it is hot and charging...
TARGET_INCREASES_COLDBOOT_TIMEOUT := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/f9200000.ssusb/f9200000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 63
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true

# Encryption
TARGET_CRYPTFS_HW_PATH := device/motorola/quark/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# MultiROM config. MultiROM also uses parts of TWRP config
#MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/motorola/quark/multirom/mr_init_devices.c
#MR_DEVICE_HOOKS := device/motorola/quark/multirom/mr_hooks.c
#MR_DEVICE_HOOKS_VER := 4
MR_DPI := xxhdpi
MR_DPI_FONT := 500
MR_USE_MROM_FSTAB := true
MR_FSTAB := device/motorola/quark/multirom/mrom.fstab
MR_KEXEC_DTB := true
#MR_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_IS_MULTIROM := true
#MR_ENCRYPTION := true
#MR_ENCRYPTION_SETUP_SCRIPT := device/moto/shamu/multirom/mr_cp_crypto.sh
#MR_USE_QCOM_OVERLAY := true
#MR_QCOM_OVERLAY_HEADER := device/motorola/quark/multirom/mr_qcom_overlay.h
#MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
#MR_QCOM_OVERLAY_USE_VSYNC := true
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
MR_NO_KEXEC := enabled
MR_DEVICE_VARIANTS := quark
MR_DEVICE_VARIANTS += quark_umts
MR_DEVICE_VARIANTS += quark_lra
MR_CONTINUOUS_FB_UPDATE := true
MR_KEXEC_MEM_MIN := 0x20000000
