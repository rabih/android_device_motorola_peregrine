## Specify phone tech before including full_phone
#$(call inherit-product, vendor/carbon/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := peregrine

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit device configuration
$(call inherit-product, device/motorola/peregrine/full_peregrine.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := peregrine
PRODUCT_NAME := carbon_peregrine
PRODUCT_RELEASE_NAME := peregrine
PRODUCT_BRAND := motorola
PRODUCT_MODEL := peregrine
PRODUCT_MANUFACTURER := motorola
