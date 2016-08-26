# Generic product
PRODUCT_NAME := rusted
PRODUCT_BRAND := rusted
PRODUCT_DEVICE := generic

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    profiler.force_disable_err_rpt=1 \
    profiler.force_disable_ulog=1 \
    logcat.live=disable \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.egl.profiler=1 \
    debug.performance.tuning=1 \
    debug.composition.type=gpu \
    hw3d.force=1 \
    hw2d.force=1 \
    force_hw_ui=true \
    persist.sys.ui.hw=1 \
    windowsmgr.max_events_per_sec=90 \
    ro.ril.power_collapse=1 \
    pm.sleep_mode=1 \
    touch.pressure.calibration=amplitude \
    touch.pressure.source=default \
    touch.pressure.scale=.00000000001 \
    ro.min.fling_velocity=25000 \
    ro.max.fling_velocity=30000 \
    ro.build.selinux=1 \
    persist.sys.debug.multi_window=true \
    ro.adb.secure=1 \
    persist.sys.usb.config=mtp,adb

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/rusted/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/rusted/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Extra packages
PRODUCT_PACKAGES += \
    Stk 

# APN list
PRODUCT_COPY_FILES += \
    vendor/rusted/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/rusted/prebuilt/common/bin/sysinit:system/bin/sysinit

