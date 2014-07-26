$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/motorola/peregrine/peregrine-vendor.mk)

LOCAL_PATH := device/motorola/peregrine

# peregrine specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.peregrine

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)

# CDMA, GSM/WCDMA
#PRODUCT_PROPERTY_OVERRIDES += \
#	ro.telephony.default_network=5 \
#	telephony.lteOnCdmaDevice=1 \
#	persist.radio.mode_pref_nv10=1 \
#	persist.radio.no_wait_for_card=1 \
#	persist.radio.dfr_mode_set=1
