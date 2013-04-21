# Release name
PRODUCT_RELEASE_NAME := isw11k

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/kyocera/isw11k/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := isw11k
PRODUCT_NAME := full_isw11k
PRODUCT_BRAND := fujitsu
PRODUCT_MODEL := isw11k
PRODUCT_MANUFACTURER := fujitsu
