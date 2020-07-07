LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(TW_DEVICE_VERSION),)
    LOCAL_CFLAGS += -DTW_DEVICE_VERSION='"-$(TW_DEVICE_VERSION)"'
else
    LOCAL_CFLAGS += -DTW_DEVICE_VERSION='"-0"'
endif

LOCAL_SRC_FILES:= \
	orscmd.cpp
LOCAL_CFLAGS += -c -W
LOCAL_MODULE := orscmd
LOCAL_MODULE_STEM := twrp
LOCAL_MODULE_TAGS:= optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_PACK_MODULE_RELOCATIONS := false
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/
include $(BUILD_EXECUTABLE)
