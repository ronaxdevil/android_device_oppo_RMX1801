# Alipay & WeChat fingerprint payment
PRODUCT_PACKAGES += \
    ifaamanager \
    soter

PRODUCT_BOOT_JARS += \
    ifaamanager \
    soter

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ifaamanager/etc/org.ifaa.android.manager.permissions.xml:system/etc/permissions/org.ifaa.android.manager.permissions.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Camera
PRODUCT_PACKAGES += \
    Snap

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc \
    fstab.qcom \
    init.msm.usb.configfs.rc

# Doze
PRODUCT_PACKAGES += \
    OppoDoze

# Fingerprint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/vendor.oppo.hardware.fingerprint.xml:system/etc/permissions/vendor.oppo.hardware.fingerprint.xml

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Keyhandler
PRODUCT_PACKAGES += \
    ConfigPanel

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.oppo_RMX1801

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/empty:system/etc/empty

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/oppo/RMX1801/RMX1801-vendor.mk)
