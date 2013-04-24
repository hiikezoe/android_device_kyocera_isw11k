# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/kyocera/isw11k/root/init.target.rc:root/init.target.rc \
  device/kyocera/isw11k/root/init.qcom.rc:root/init.qcom.rc \
  device/kyocera/isw11k/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/kyocera/isw11k/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/kyocera/isw11k/root/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  device/kyocera/isw11k/root/init.qcom.sh:root/init.qcom.sh \
  device/kyocera/isw11k/system/vold.fstab:system/etc/vold.fstab \
  device/kyocera/isw11k/system/ts-mxt224.idc:system/usr/idc/ts-mxt224.idc \
  device/kyocera/isw11k/root/ueventd.rc:root/ueventd.rc

PRODUCT_PACKAGES += \
  copybit.msm7630_surf \
  gralloc.msm7630_surf \
  hwcomposer.msm7630_surf \
  libgenlock \
  liboverlay \
  libstagefrighthw

$(call inherit-product, vendor/qcom/adreno200/device-adreno200.mk)
$(call inherit-product-if-exists, vendor/kyocera/msm7630/msm7630-vendor.mk)
