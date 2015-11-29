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
