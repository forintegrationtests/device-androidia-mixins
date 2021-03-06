{{#enable_hw_sec}}
PRODUCT_PACKAGES += \
	keystore.${TARGET_BOARD_PLATFORM} \
	libtrusty \
	intelstorageproxyd \
	libinteltrustystorage \
	libinteltrustystorageinterface \
	gatekeeper.trusty \
	android.hardware.gatekeeper@1.0-impl \
	android.hardware.gatekeeper@1.0-service \

PRODUCT_PACKAGES_DEBUG += \
	intel-secure-storage-unit-test \
	gatekeeper-unit-tests \
	libscrypt_static \
	scrypt_test \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.gatekeeper=trusty \
{{/enable_hw_sec}}
