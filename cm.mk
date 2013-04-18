## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := isw11k

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/kyocera/isw11k/device_isw11k.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := isw11k
PRODUCT_NAME := cm_isw11k
PRODUCT_BRAND := kyocera
PRODUCT_MODEL := isw11k
PRODUCT_MANUFACTURER := kyocera
