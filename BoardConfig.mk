# inherit from the proprietary version
include device/kyocera/msm7630/BoardConfig.mk

-include vendor/kyocera/msm7630/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := isw11k

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x1300000
KERNEL_DEFCONFIG := kyocera-isw11k_defconfig
KERNEL_HEADERS += kernel/kyocera/msm7360/include

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     :=    8388608 # 8MiB
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=   12582912 # 12MiB
BOARD_SYSTEMIMAGE_PARTITION_SIZE   :=  419430400 # 400MiB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 # 2GiB
BOARD_FLASH_BLOCK_SIZE := 524288
