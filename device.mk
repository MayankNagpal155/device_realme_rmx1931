#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

#TODO: Add Vendor Files
# # Get non-open-source specific aspects
# $(call inherit-product, vendor/oneplus/hotdog/hotdog-vendor.mk)
# $(call inherit-product, vendor/oneplus/sm8150-common/sm8150-common-vendor.mk)

# Enable updating of APEXes
OVERRIDE_PRODUCT_COMPRESSED_APEX := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

#TODO:
# # Setup dalvik vm configs
# $(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

#TODO:
# # Additional native libraries
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

#TODO:
# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Device Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

#TODO:
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

#TODO:
# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

#TODO:
# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

#TODO:
# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

#TODO:
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

#TODO:
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#TODO:
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true

#TODO:
# # ANT+
# PRODUCT_PACKAGES += \
#     AntHalService-Soong

# # Bluetooth
# PRODUCT_PACKAGE_OVERLAYS += \
#     vendor/qcom/opensource/commonsys-intf/bluetooth/overlay/qva

# # Camera
# PRODUCT_PACKAGES += \
#     Snap

# # Display
# PRODUCT_AAPT_CONFIG := normal
# PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# # Doze
# PRODUCT_PACKAGES += \
#     RealmeDoze

# # Fastbootd
# PRODUCT_PACKAGES += \
#     fastbootd

# # Fingerprint
# PRODUCT_PACKAGES += \
#     android.hardware.biometrics.fingerprint@2.1-service.x3 \
#     vendor.oplus.hardware.biometrics.fingerprint@2.1

# PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

# # Fstab
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/vendor_overlay/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# # HIDL
# PRODUCT_PACKAGES += \
#     android.hidl.base@1.0 \
#     libhidltransport \
#     libhwbinder

# # Init
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/rootdir/etc/init.device.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.device.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.safailnet.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/init.safailnet.rc \
#     $(LOCAL_PATH)/rootdir/bin/init.set_baseband.sh:$(TARGET_COPY_OUT_PRODUCT)/bin/init.set_baseband.sh

# # Keylayout
# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio-keys.kl \
#     $(LOCAL_PATH)/configs/keylayout/touchpanel.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/touchpanel.kl

# # NFC
# PRODUCT_PACKAGES += \
#     com.android.nfc_extras \
#     com.gsma.services.nfc \
#     NfcNci \
#     SecureElement \
#     Tag

# # Overlays
# DEVICE_PACKAGE_OVERLAYS += \
#     $(LOCAL_PATH)/overlay

# PRODUCT_PACKAGES += \
#     NoCutoutOverlay \
#     NotchBarKiller

# # Partitions
# PRODUCT_BUILD_SUPER_PARTITION := false
# PRODUCT_EXTRA_VNDK_VERSIONS := 30
# PRODUCT_TARGET_VNDK_VERSION := 30
# PRODUCT_USE_DYNAMIC_PARTITIONS := true
# PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# # Parts
# PRODUCT_PACKAGES += \
#     RealmeParts

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/parts/init/realmeparts.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/realmeparts.rc

# # Power
# PRODUCT_PACKAGES += \
#     android.hardware.power-service.x3

# # RCS
# PRODUCT_PACKAGES += \
#     com.android.ims.rcsmanager \
#     PresencePolling \
#     RcsService

# # Shipping API level
# PRODUCT_SHIPPING_API_LEVEL := 29

# # Soong namespaces
# PRODUCT_SOONG_NAMESPACES += \
#     $(LOCAL_PATH) \
#     hardware/oplus

# # Telephony
# PRODUCT_PACKAGES += \
#     extphonelib \
#     extphonelib.xml \
#     ims-ext-common \
#     ims_ext_common.xml \
#     qti-telephony-hidl-wrapper \
#     qti_telephony_hidl_wrapper.xml \
#     qti-telephony-utils \
#     qti_telephony_utils.xml \
#     telephony-ext

# PRODUCT_BOOT_JARS += \
#     telephony-ext

# # USB
# PRODUCT_PACKAGES += \
#     android.hardware.usb@1.0-service.basic.x3

# # Vendor overlay
# PRODUCT_COPY_FILES += \
#     $(call find-copy-subdir-files,*,$(LOCAL_PATH)/vendor_overlay/,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION))

# # WiFi
# PRODUCT_PACKAGES += \
#     TetheringConfigOverlay \
#     WifiOverlay










# # Overlays
# DEVICE_PACKAGE_OVERLAYS += \
#     $(LOCAL_PATH)/overlay \
#     $(LOCAL_PATH)/overlay-lineage

# PRODUCT_ENFORCE_RRO_TARGETS := *

# # A/B
# AB_OTA_POSTINSTALL_CONFIG += \
#     RUN_POSTINSTALL_system=true \
#     POSTINSTALL_PATH_system=system/bin/otapreopt_script \
#     FILESYSTEM_TYPE_system=ext4 \
#     POSTINSTALL_OPTIONAL_system=true

# PRODUCT_PACKAGES += \
#     otapreopt_script

# # Permissions
# PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
#     frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
#     frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
#     frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
#     frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
#     frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
#     frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
#     frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
#     frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
#     frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
#     frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
#     frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
#     frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
#     frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
#     frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
#     frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
#     frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
#     frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
#     frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
#     frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
#     frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
#     frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
#     frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
#     frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
#     frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#     frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
#     frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
#     frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
#     frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
#     frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
#     frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
#     frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
#     frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
#     frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
#     frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
#     frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
#     frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
#     frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
#     frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
#     vendor/lineage/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# # ANT+
# PRODUCT_PACKAGES += \
#     AntHalService-Soong \
#     com.dsi.ant@1.0.vendor

# # Atrace
# PRODUCT_PACKAGES += \
#     android.hardware.atrace@1.0-service

# # Audio
# PRODUCT_PACKAGES += \
#     android.hardware.audio.service \
#     android.hardware.audio@6.0-impl \
#     android.hardware.audio.effect@6.0-impl \
#     android.hardware.soundtrigger@2.1-impl \
#     android.hardware.bluetooth.audio@2.0-impl \
#     audio.a2dp.default \
#     audio.bluetooth.default \
#     audio.r_submix.default \
#     audio.usb.default \
#     libaudio-resampler \
#     libaudioroute \
#     libhdmiedid \
#     libexthwplugin \
#     libhfp \
#     libqcompostprocbundle \
#     libqcomvisualizer \
#     libqcomvoiceprocessing \
#     libsndmonitor \
#     libspkrprot \
#     libssrec \
#     libtinycompress \
#     libvolumelistener \
#     tinymix

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
#     $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
#     $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
#     $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
#     $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
#     $(LOCAL_PATH)/audio/audio_tuning_mixer_tavil.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tavil.txt \
#     $(LOCAL_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
#     $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
#     $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
#     $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9340.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340.xml \
#     $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9340_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9340_qrd.xml \
#     $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/audio/bluetooth_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_hearing_aid_audio_policy_configuration.xml \
#     frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
#     frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
#     frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
#     frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# # Boot control
# PRODUCT_PACKAGES += \
#     android.hardware.boot@1.0-impl:64 \
#     android.hardware.boot@1.0-service \
#     android.hardware.boot@1.0-impl.recovery \
#     bootctrl.msmnile \
#     bootctrl.msmnile.recovery

# PRODUCT_PACKAGES_DEBUG += \
#     bootctl

# # Bluetooth
# PRODUCT_PACKAGES += \
#     liba2dpoffload \
#     libbthost_if \
#     vendor.qti.hardware.bluetooth_audio@2.0.vendor \
#     vendor.qti.hardware.btconfigstore@1.0.vendor \
#     vendor.qti.hardware.btconfigstore@2.0.vendor

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

# # Doze
# PRODUCT_PACKAGES += \
#     OnePlusDoze

# # DRM
# PRODUCT_PACKAGES += \
#     android.hardware.drm@1.3-service.clearkey

# # fastbootd
# PRODUCT_PACKAGES += \
#     fastbootd

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

# # Net
# PRODUCT_PACKAGES += \
#     netutils-wrapper-1.0

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

# # OnePlus
# PRODUCT_PACKAGES += \
#     oneplus-fwk

# PRODUCT_BOOT_JARS += \
#     oneplus-fwk

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

# # Sensors
# PRODUCT_PACKAGES += \
#     als_correction_service.oneplus_msmnile \
#     android.hardware.sensors@2.0-service.oneplus_msmnile \
#     libsensorndkbridge

# # Servicetracker
# PRODUCT_PACKAGES += \
#     vendor.qti.hardware.servicetracker@1.0.vendor

# # Soong namespaces
# PRODUCT_SOONG_NAMESPACES += \
#     $(LOCAL_PATH) \
#     hardware/oneplus

# # Telephony
# PRODUCT_PACKAGES += \
#     ims-ext-common \
#     ims_ext_common.xml \
#     qti-telephony-hidl-wrapper \
#     qti_telephony_hidl_wrapper.xml \
#     qti-telephony-utils \
#     qti_telephony_utils.xml \
#     telephony-ext

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

# # USB
# PRODUCT_PACKAGES += \
#     android.hardware.usb@1.0-service

# # Wifi
# PRODUCT_PACKAGES += \
#     android.hardware.wifi@1.0-service \
#     hostapd \
#     libwpa_client \
#     libwifi-hal-ctrl \
#     libwifi-hal-qcom \
#     vendor.qti.hardware.wifi.hostapd@1.0.vendor \
#     vendor.qti.hardware.wifi.hostapd@1.1.vendor \
#     vendor.qti.hardware.wifi.supplicant@2.0.vendor \
#     vendor.qti.hardware.wifi.supplicant@2.1.vendor \
#     wifi-mac-generator \
#     wpa_supplicant \
#     wpa_supplicant.conf

# PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
#     $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
#     $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# # WiFi
# PRODUCT_PACKAGES += \
#     WifiResCommon

# # WiFi Display
# PRODUCT_PACKAGES += \
#     libnl \
#     libwfdaac_vendor

# PRODUCT_BOOT_JARS += \
#     WfdCommon

# PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#     ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
#     ro.surface_flinger.has_HDR_display=true \
#     ro.surface_flinger.has_wide_color_display=true \
#     ro.surface_flinger.protected_contents=true \
#     ro.surface_flinger.use_color_management=true \
#     ro.surface_flinger.wcg_composition_dataspace=143261696
