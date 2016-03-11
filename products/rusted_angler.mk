# Inherit AOSP device configuration for angler.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit common product files.
$(call inherit-product, vendor/rusted/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := rusted_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/rusted/prebuilt/bootanimation/angler.zip:system/media/bootanimation.zip

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29V/2554798:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29V 2554798 release-keys"
