{{#gpp}}
ifeq ($(findstring cws_manu,$(BOARD_SEPOLICY_DIRS)),)
    BOARD_SEPOLICY_DIRS += device/intel/sepolicy/cws_manu
endif
{{/gpp}}
