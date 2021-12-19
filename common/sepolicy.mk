#
# This policy configuration will be used by all products that
# inherit from Nortical-UI
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/nortical/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/nortical/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/nortical/sepolicy/common/dynamic \
    device/nortical/sepolicy/common/system
else
BOARD_SEPOLICY_DIRS += \
    device/nortical/sepolicy/common/dynamic \
    device/nortical/sepolicy/common/vendor
endif
