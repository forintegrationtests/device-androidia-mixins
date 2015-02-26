PRODUCT_PACKAGES += \
    setup_fs \
    setup_fs_nvm \
    libnvmmodule \
    nvm_useragent \
    nvmtest \
    nvm_init.sh \
    libipcservice \
    libipcs \
    libipcservice_tcpip_plugin \
    libipcservice_tty_plugin \
    libipcservice_uds_plugin \
    libipcservice_utaos \
    ipcsd \
    ipcservice_daemon \
    rpcNotifier \
    rpcServer \
    rpc-daemon \

TARGET_BOARD_PLATFORM := {{{board_platform}}}

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.rc:root/init.{{{hardware}}}.rc \
    $(LOCAL_PATH)/init.recovery.rc:root/init.recovery.{{{hardware}}}.rc \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.{{{hardware}}}.rc \
    $(LOCAL_PATH)/fstab:root/fstab.{{{hardware}}} \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../media_codecs.xml:system/etc/media_codecs.xml \

