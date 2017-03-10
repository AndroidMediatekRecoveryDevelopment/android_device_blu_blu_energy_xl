# Release name
PRODUCT_RELEASE_NAME := BLU_ENERGY_XL

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/blu/BLU_ENERGY_XL/device_BLU_ENERGY_XL.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BLU_ENERGY_XL
PRODUCT_NAME := cm_BLU_ENERGY_XL
PRODUCT_BRAND := blu
PRODUCT_MODEL := BLU_ENERGY_XL
PRODUCT_MANUFACTURER := blu
