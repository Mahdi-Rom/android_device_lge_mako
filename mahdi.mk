# Release name
PRODUCT_RELEASE_NAME := Nexus4

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := mako
PRODUCT_NAME := mahdi_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4.4 KTU84P 1227136 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
