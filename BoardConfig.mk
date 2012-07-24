# inherit from the proprietary version
-include vendor/samsung/galaxysl/BoardConfigVendor.mk

# Board properties
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := latona
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
COMMON_GLOBAL_CFLAGS += -DOMAP_COMPAT

TARGET_BOOTANIMATION_PRELOAD := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxysl/recovery.rc

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 4096

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxysl/shbootimg.mk

# Define kernel config for inline building
#TARGET_KERNEL_CONFIG := latona_galaxysl_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/latona
# Fallback to prebuilt
TARGET_PREBUILT_KERNEL := device/samsung/galaxysl/kernel

# recovery
BOARD_BML_BOOT := /dev/block/bml7
BOARD_BML_RECOVERY := /dev/block/bml7
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxysl/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxysl/recovery/graphics.c

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 339738624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2013200384
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun%d/file"

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/galaxysl/releasetools/galaxysl_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/galaxysl/releasetools/galaxysl_img_from_target_files

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/galaxysl/vibrator/tspdrv.c

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Egl
BOARD_EGL_CFG := device/samsung/galaxysl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
USE_OPENGL_RENDERER := true

# OMX Stuff
HARDWARE_OMX := true
TARGET_USE_OMX_RECOVERY := false
TARGET_USE_OMAP_COMPAT := true
BUILD_WITH_TI_AUDIO := 1
BUILD_PV_VIDEO_ENCODERS := 1

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_AUDIO_LEGACY := false

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# Camera
BOARD_CAMERA_LIBRARIES := libcamera

# Wifi related defines
USES_TI_WL1271 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE           := wl1271
#BOARD_SOFTAP_DEVICE         := wl1271 // missing libhostapdcli
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
AP_CONFIG_DRIVER_WILINK     := true

TARGET_OTA_ASSERT_DEVICE := galaxysl,GT-I9003,GT-I9003L,GT-I9003B
