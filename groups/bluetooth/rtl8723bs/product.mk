PRODUCT_PACKAGES += \
{{#hsu}}
    bd_prov \
    libbt-vendor \
    rfkill_bt.sh \
    bt_vendor.default.conf \
{{/hsu}}
{{^hsu}}
    hciattach \
{{/hsu}}
    audio.a2dp.default \
    rtl8723b_config \
    rtl8723b_fw \

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
		frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

{{^hsu}}
ADDITIONAL_BUILD_PROPERTIES += bluetooth.hwcfg=stop \
                bluetooth.rfkill=1

# Bluetooth eng / userdebug
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
	hciconfig \
	btmon \
	hcitool
endif
{{/hsu}}
