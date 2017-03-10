$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/blu/BLU_ENERGY_XL/BLU_ENERGY_XL-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/blu/BLU_ENERGY_XL/overlay

LOCAL_PATH := device/blu/BLU_ENERGY_XL


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_BLU_ENERGY_XL
PRODUCT_DEVICE := BLU_ENERGY_XL

ADDITIONAL_DEFAULT_PROPERTIES += \
ro.adb.secure=0 \
persist.sys.usb.config=mtp \
persist.service.acm.enable=0 \
ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.zygote=zygote64_32 \
ro.mount.fs=EXT4 \
camera.disable_zsl_mode=1 \
dalvik.vm.dex2oat-Xms=64m \
dalvik.vm.dex2oat-Xmx=512m \
dalvik.vm.image-dex2oat-Xms=64m \
dalvik.vm.image-dex2oat-Xmx=64m \
ro.dalvik.vm.native.bridge=0 \
