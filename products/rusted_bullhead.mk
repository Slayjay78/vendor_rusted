# Inherit AOSP device configuration for angler.
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/rusted/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rusted_bullhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := bullhead
PRODUCT_MODEL := Nexus 5x
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/rusted/prebuilt/bootanimation/bullhead.zip:system/media/bootanimation.zip

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MMB29V 2554798 release-keys"
