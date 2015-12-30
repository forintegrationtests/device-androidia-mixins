# The make targets for both projects are identical
# (e.g. camera.gmin.so), so the Android.mk's wrap themselves in tests
# for these.  Set only one.  And we'll just ignore the inconsistent _.
USE_CAMERA_HAL2 := false
USE_CAMERA_HAL_3 := true
IPU_SYSVER := {{{ipu4_version}}}
IPU_CAMERA_PROFILES := {{{camera_profiles}}}
IPU_CAMERA_CONFIG := {{{camera_config}}}

# BXT IPU hardware generation, camera3hal builds different code for
# different IPUs
BOARD_CAMERA_IPU4_SUPPORT = true

# Face Engine can be either PVL or IA.
BOARD_CAMERA_FACE_ENGINE = {{{face_engine}}}

# camera3hal won't build if this isn't true
USE_SHARED_IA_FACE = true

# Intel camera extras (HDR, face detection, panorama, red-eye detection etc.).
USE_INTEL_CAMERA_EXTRAS := true

# Selects which subdirectory to pick in libmfldadvci/ia_imaging/ia_panorama/
IA_PANORAMA_VERSION := 1.0

# Use hardware JPEG encode on BXT
USE_INTEL_JPEG := true

# Must be "false" (NOT simply unset!) or else lots of camera
# depencencies will remove themselves from the build...
USE_CAMERA_STUB := false

PLATFORM_FR_SUPPORT := true
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/camera
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/camera/ipu_common
BOARD_SEPOLICY_DIRS += device/intel/sepolicy/camera/ipu4
