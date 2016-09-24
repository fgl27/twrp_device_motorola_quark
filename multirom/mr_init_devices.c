#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    "/sys*/*.*",
    "/sys*/*",

    "/sys/class/graphics/fb0",

    "/sys/block/mmcblk0*",
    "/sys/devices/msm_sdcc.1*",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0*",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001*",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0*",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p37*", // boot
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p39*", // cache
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1*", // modem
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p22*", // persist
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p40*", // system
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p41*", // userdata
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p17*", // metadata
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p18*", // metadata
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p32*", // metadata
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p36*", // recovery
    "/sys/bus/mmc*",
    "/sys/bus/mmc/drivers/mmcblk*",
    "/sys/module/mmc_core*",
    "/sys/module/mmcblk*",

    "/sys/devices/gpio_keys.75/input*",
    "/sys/devices/virtual/input*",
    "/sys/devices/virtual/misc/uinput*",
    "/sys/devices/f9966000.i2c/i2c-1/1-004a/input*",

    // for adb
    "/sys/devices/virtual/tty/ptmx*",
    "/sys/devices/virtual/misc/android_adb*",
    "/sys/devices/virtual/android_usb/android0/f_adb*",
    "/sys/bus/usb*",

    // USB drive is in here
    "/sys/devices/platform/xhci-hcd*",

    // Encryption
    "/sys/devices/virtual/misc/device-mapper*",
    "/sys/devices/virtual/misc/ion*",
    "/sys/devices/virtual/qseecom/qseecom*",

    NULL
};

