$(call inherit-product, device/samsung/jflteatt/full_jflteatt.mk)

# Release name
PRODUCT_RELEASE_NAME := jflteatt

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)


# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jflteuc TARGET_DEVICE=jflteatt BUILD_FINGERPRINT="samsung/jflteuc/jflteatt:4.2.2/JDQ39/I337UCUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jflteuc-user 4.2.2 JDQ39 I337UCUAMDB release-keys"

PRODUCT_NAME := slim_jflteatt
PRODUCT_DEVICE := jflteatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I337
PRODUCT_MANUFACTURER := Samsung

TARGET_CUSTOM_RELEASETOOL := $(ANDROID_BUILD_TOP)/device/samsung/jflteatt/tools/squisher
