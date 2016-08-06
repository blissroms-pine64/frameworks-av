LOCAL_PATH:= $(call my-dir)

include $(LOCAL_PATH)/../config.mk

MY_SDK="notdef"

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_4_2))
MY_SDK=ajb42
endif

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_4_4))
MY_SDK=akk44
endif

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_5_0))
MY_SDK=alp50
endif

# 1.libvdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvdecoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libvdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 2.libadecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libadecoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libadecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 3.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 4. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 5.libaw_plugin
include $(CLEAR_VARS)
LOCAL_MODULE := libaw_plugin
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libaw_plugin.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 6.libnormal_audio
include $(CLEAR_VARS)
LOCAL_MODULE := libnormal_audio
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libnormal_audio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 7.liblive555
include $(CLEAR_VARS)
LOCAL_MODULE := liblive555
LOCAL_SRC_FILES := lib32/$(MY_SDK)/liblive555.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_5_0))
# 1.libvdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvdecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libvdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 2.libadecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libadecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libadecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 3.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 4. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 5.libaw_plugin
include $(CLEAR_VARS)
LOCAL_MODULE := libaw_plugin
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libaw_plugin.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 6.libnormal_audio
include $(CLEAR_VARS)
LOCAL_MODULE := libnormal_audio
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libnormal_audio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 7.liblive555
include $(CLEAR_VARS)
LOCAL_MODULE := liblive555
LOCAL_SRC_FILES := lib64/$(MY_SDK)/liblive555.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)
endif

