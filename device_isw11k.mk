$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/kyocera/isw11k/isw11k-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/kyocera/isw11k/overlay

# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/kyocera/isw11k/root/ueventd.isw11k.rc:root/ueventd.isw11k.rc

PRODUCT_PACKAGES += \
  sdgpiocmd

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_isw11k
PRODUCT_DEVICE := isw11k
