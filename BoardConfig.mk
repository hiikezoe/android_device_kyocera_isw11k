USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/kyocera/isw11k/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7630_surf
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU := neon
TARGET_BOOTLOADER_BOARD_NAME := isw11k

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/kyocera/isw11k/recovery/keys.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x1300000
TARGET_KERNEL_CONFIG := kyocera-isw11k_defconfig
TARGET_KERNEL_SOURCE := kernel/kyocera/msm7630

BOARD_BOOTIMAGE_PARTITION_SIZE     :=    8388608 # 8MiB
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=   12582912 # 12MiB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   :=  419430400 # 400MiB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 # 2GiB
BOARD_FLASH_BLOCK_SIZE := 524288
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
