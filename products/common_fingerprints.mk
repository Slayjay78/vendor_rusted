ifeq ($(TARGET_PRODUCT),rusted_angler)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0.1/MMB29M/2431559:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29M 2431559 release-keys"
endif

