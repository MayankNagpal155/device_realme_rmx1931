#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/realme/RMX1931/RMX1931-vendor.mk)

# TODO :
# # Enable updating of APEXes
# OVERRIDE_PRODUCT_COMPRESSED_APEX := false
# $(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# TODO :
# # Setup dalvik vm configs
# $(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# TODO :
# Additional native libraries
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# TODO :
# # ANT+
# PRODUCT_PACKAGES += \
#     AntHalService-Soong

# TODO :
# Audio
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
#     $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# TODO :
# Bluetooth
# PRODUCT_PACKAGES += \
#     liba2dpoffload \
#     libbthost_if \
#     vendor.qti.hardware.bluetooth_audio@2.0.vendor \
#     vendor.qti.hardware.btconfigstore@1.0.vendor \
#     vendor.qti.hardware.btconfigstore@2.0.vendor

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/qcom/opensource/commonsys-intf/bluetooth/overlay/qva

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# TODO : For Modifying Camera
# Camera
PRODUCT_PACKAGES += \
    Snap

# TODO : Check if more packages needed or if Copy_Files is needed
# Common init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    fstab.qcom

# TODO : Check which works and if needed
# # Fstab
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/vendor_overlay/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom
#     $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Device Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# TODO :
# Doze
PRODUCT_PACKAGES += \
    RealmeDoze

# TODO :
# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# TODO : Urgent Check Fingerprint Service and Version
# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.RMX1931 \
    vendor.oppo.hardware.biometrics.fingerprint@2.1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

# TODO :
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0_system \
    libhidltransport \
    libhwbinder

# TODO :
# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.device.rc \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/rootdir/etc/init.safailnet.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.safailnet.rc \
    $(LOCAL_PATH)/rootdir/bin/init.set_baseband.sh:$(TARGET_COPY_OUT_PRODUCT)/bin/init.set_baseband.sh

# TODO :
# Iorap
PRODUCT_PACKAGES += \
    iorap-app-startup-runner

# TODO : Check DT2W
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
    # $(LOCAL_PATH)/configs/keylayout/touchpanel.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/touchpanel.kl

# TODO : Urgent
# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.RMX1931

# TODO :
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# TODO :
# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    NfcNci \
    SecureElement \
    Tag

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    NoCutoutOverlay \
    NotchBarKiller

# TODO :
# Parts
PRODUCT_PACKAGES += \
    RealmeProximityHelper \
    RealmeParts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/parts/init/realmeparts.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/realmeparts.rc


# TODO : Urgent Check Power-Service
# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.RMX1931

# TODO :
# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-qti.xml

# TODO :
# Ramdisk
PRODUCT_PACKAGES += \
    init.safailnet.rc

# TODO :
# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    PresencePolling \
    RcsService

# TODO :
# Ril
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4

# TODO :
# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# TODO :
# Sensors Hal
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.RMX1931

# TODO :
# Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml

# TODO :
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Telephony
PRODUCT_PACKAGES += \
    extphonelib \
    extphonelib.xml \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TODO : Urgent Check Service
# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic.RMX1931

# TODO :
# Vendor overlay
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor_overlay/,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION))

# WiFi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay

# # Boot control
# PRODUCT_PACKAGES += \
#     android.hardware.boot@1.0-impl:64 \
#     android.hardware.boot@1.0-service \
#     android.hardware.boot@1.0-impl.recovery \
#     bootctrl.msmnile \
#     bootctrl.msmnile.recovery

# PRODUCT_PACKAGES_DEBUG += \
#     bootctl

# # Camera
# PRODUCT_PACKAGES += \
#     android.frameworks.displayservice@1.0 \
#     android.hardware.camera.provider@2.4-impl \
#     android.hardware.camera.provider@2.4-service_64 \
#     libxml2 \
#     Snap \
#     vendor.oneplus.camera.CameraHIDL@1.0.vendor \
#     vendor.qti.hardware.camera.device@1.0.vendor

# # Common init scripts
# PRODUCT_PACKAGES += \
#     ftm_power_config.sh \
#     init.class_main.sh \
#     init.crda.sh \
#     init.cust.rc \
#     init.mdm.sh \
#     init.oem.debug.rc \
#     init.oem.rc \
#     init.oem_ftm.rc \
#     init.qcom.class_core.sh \
#     init.qcom.coex.sh \
#     init.qcom.early_boot.sh \
#     init.qcom.efs.sync.sh \
#     init.qcom.factory.rc \
#     init.qcom.post_boot.sh \
#     init.qcom.rc \
#     init.qcom.sdio.sh \
#     init.qcom.sensors.sh \
#     init.qcom.sh \
#     init.qcom.usb.rc \
#     init.qcom.usb.sh \
#     init.qti.chg_policy.sh \
#     init.qti.dcvs.sh \
#     init.qti.qcv.sh \
#     init.qti.ufs.rc \
#     init.recovery.qcom.rc \
#     init.target.rc \
#     ueventd.qcom.rc \
#     vendor.oem_ftm.rc \
#     vendor.oem_ftm_svc_disable.rc

# # Component overrides
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml

# # Display
# PRODUCT_PACKAGES += \
#     android.hardware.graphics.composer@2.4-service \
#     android.hardware.graphics.mapper@3.0-impl-qti-display \
#     android.hardware.graphics.mapper@4.0-impl-qti-display \
#     android.hardware.memtrack@1.0-impl \
#     android.hardware.memtrack@1.0-service \
#     gralloc.msmnile \
#     hwcomposer.msmnile \
#     libdisplayconfig.qti \
#     libdisplayconfig.qti.vendor \
#     libqdMetaData \
#     libtinyxml \
#     libvulkan \
#     memtrack.msmnile \
#     vendor.display.config@1.0 \
#     vendor.display.config@1.0.vendor \
#     vendor.display.config@1.1.vendor \
#     vendor.display.config@1.2.vendor \
#     vendor.display.config@1.3.vendor \
#     vendor.display.config@1.4.vendor \
#     vendor.display.config@1.5.vendor \
#     vendor.display.config@1.6.vendor \
#     vendor.display.config@1.7.vendor \
#     vendor.display.config@1.8.vendor \
#     vendor.display.config@1.9.vendor \
#     vendor.display.config@2.0 \
#     vendor.display.config@2.0.vendor \
#     vendor.qti.hardware.display.allocator-service \
#     vendor.qti.hardware.display.mapper@1.0.vendor \
#     vendor.qti.hardware.display.mapper@1.1.vendor \
#     vendor.qti.hardware.display.mapper@2.0.vendor \
#     vendor.qti.hardware.display.mapper@3.0.vendor \
#     vendor.qti.hardware.display.mapper@4.0.vendor

# # DRM
# PRODUCT_PACKAGES += \
#     android.hardware.drm@1.3-service.clearkey

# # Fingerprint
# PRODUCT_PACKAGES += \
#     android.hardware.biometrics.fingerprint@2.1-service.oneplus \
#     vendor.lineage.biometrics.fingerprint.inscreen@1.0-service.oneplus

# # GPS
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
#     $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
#     $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
#     $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
#     $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
#     $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
#     $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# # Health
# PRODUCT_PACKAGES += \
#     android.hardware.health@2.1-impl \
#     android.hardware.health@2.1-service

# # HIDL
# PRODUCT_PACKAGES += \
#     libhidltransport \
#     libhidltransport.vendor \
#     libhwbinder \
#     libhwbinder.vendor

# # HotwordEnrollement app permissions
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# # Input
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/keylayout/gf_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf_input.kl \
#     $(LOCAL_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# # IPACM
# PRODUCT_PACKAGES += \
#     ipacm \
#     IPACM_cfg.xml \
#     libipanat \
#     liboffloadhal

# # IPC router config
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# # IRQ
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# # LiveDisplay
# PRODUCT_PACKAGES += \
#     vendor.lineage.livedisplay@2.1-service.oneplus_msmnile

# # Media
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
#     $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
#     $(LOCAL_PATH)/configs/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
#     $(LOCAL_PATH)/configs/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
#     $(LOCAL_PATH)/configs/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml

# PRODUCT_COPY_FILES += \
#     frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
#     frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
#     frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
#     frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml


# # NFC
# PRODUCT_PACKAGES += \
#     android.hardware.nfc@1.0:64 \
#     android.hardware.nfc@1.1:64 \
#     android.hardware.nfc@1.2:64 \
#     android.hardware.secure_element@1.0:64 \
#     android.hardware.secure_element@1.1:64 \
#     com.android.nfc_extras \
#     Tag \
#     vendor.nxp.nxpese@1.0:64 \
#     vendor.nxp.nxpnfc@1.0:64

# # OMX
# PRODUCT_PACKAGES += \
#     libavservices_minijail \
#     libavservices_minijail.vendor \
#     libavservices_minijail_vendor \
#     libc2dcolorconvert \
#     libcodec2_hidl@1.0.vendor \
#     libcodec2_vndk.vendor \
#     libOmxAacEnc \
#     libOmxAmrEnc \
#     libOmxCore \
#     libOmxEvrcEnc \
#     libOmxG711Enc \
#     libOmxQcelp13Enc \
#     libOmxVdec \
#     libOmxVenc \
#     libOmxVidcCommon \
#     libstagefrighthw

# # Power
# PRODUCT_PACKAGES += \
#     android.hardware.power-service-qti \
#     vendor.qti.hardware.perf@2.2.vendor

# # QMI
# PRODUCT_PACKAGES += \
#     libjson \
#     libqti_vndfwk_detect \
#     libqti_vndfwk_detect.vendor

# # RIL
# PRODUCT_PACKAGES += \
#     android.hardware.radio@1.2 \
#     android.hardware.radio.config@1.0 \
#     android.hardware.secure_element@1.0 \
#     libprotobuf-cpp-full \
#     libril_shim \
#     librmnetctl \
#     libxml2

# # Vendor libstdc++
# PRODUCT_PACKAGES += \
#     libstdc++.vendor

# # Vibrator
# PRODUCT_PACKAGES += \
#     vendor.qti.hardware.vibrator.service.oneplus

# PRODUCT_COPY_FILES += \
#     vendor/qcom/opensource/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

# # Seccomp policy
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# # Servicetracker
# PRODUCT_PACKAGES += \
#     vendor.qti.hardware.servicetracker@1.0.vendor

# PRODUCT_BOOT_JARS += \
#     telephony-ext

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-qti.xml

# # Touch
# PRODUCT_PACKAGES += \
#     vendor.lineage.touch@1.0-service.oneplus

# # tri-state key
# PRODUCT_PACKAGES += \
#     KeyHandler \
#     tri-state-key-calibrate

# # Trust HAL
# PRODUCT_PACKAGES += \
#     vendor.lineage.trust@1.0-service

# # Update engine
# PRODUCT_PACKAGES += \
#     update_engine \
#     update_engine_sideload \
#     update_verifier

# PRODUCT_PACKAGES_DEBUG += \
#     update_engine_client

# PRODUCT_BOOT_JARS += \
#     WfdCommon

# PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#     ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
#     ro.surface_flinger.has_HDR_display=true \
#     ro.surface_flinger.has_wide_color_display=true \
#     ro.surface_flinger.protected_contents=true \
#     ro.surface_flinger.use_color_management=true \
#     ro.surface_flinger.wcg_composition_dataspace=143261696
