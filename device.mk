# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/kyocera/isw11k/root/init.target.rc:root/init.target.rc \
  device/kyocera/isw11k/root/init.qcom.rc:root/init.qcom.rc \
  device/kyocera/isw11k/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/kyocera/isw11k/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/kyocera/isw11k/root/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  device/kyocera/isw11k/root/init.qcom.sh:root/init.qcom.sh \
  device/kyocera/isw11k/root/ueventd.rc:root/ueventd.rc

PRODUCT_PACKAGES += \
  copybit.msm7630_surf \
  gralloc.msm7630_surf \
  hwcomposer.msm7630_surf \
  libgenlock \
  liboverlay \
  libstagefrighthw
