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

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_6_0))
MY_SDK=amm60
endif

# 1.libadecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libadecoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libadecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 2.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 3. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 4.libaw_plugin
include $(CLEAR_VARS)
LOCAL_MODULE := libaw_plugin
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libaw_plugin.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 5.libnormal_audio
include $(CLEAR_VARS)
LOCAL_MODULE := libnormal_audio
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libnormal_audio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 6.liblive555
include $(CLEAR_VARS)
LOCAL_MODULE := liblive555
LOCAL_SRC_FILES := lib32/$(MY_SDK)/liblive555.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 7.librtp
include $(CLEAR_VARS)
LOCAL_MODULE := librtp
LOCAL_SRC_FILES := lib32/$(MY_SDK)/librtp.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 8.libawavs
include $(CLEAR_VARS)
LOCAL_MODULE := libawavs
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawavs.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 9.libawh264
include $(CLEAR_VARS)
LOCAL_MODULE := libawh264
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawh264.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 10.libawh265
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawh265.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 11.libawh265soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265soft
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawh265soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 12.libawmjpeg
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpeg
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 13.libawmjpegplus
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpegplus
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmjpegplus.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 14.libawmpeg2
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg2
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 15.libawmpeg4base
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4base
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg4base.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 16.libawmpeg4dx
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4dx
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg4dx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 17.libawmpeg4h263
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4h263
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg4h263.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 18.libawmpeg4normal
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4normal
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg4normal.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 19.libawmpeg4vp6
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4vp6
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawmpeg4vp6.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 20.libawvp6soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp6soft
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawvp6soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 21.libawvp8
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp8
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawvp8.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 22.libawvp9soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp9soft
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawvp9soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 23.libawwmv3
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv3
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawwmv3.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)

# 24.libawwmv12soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv12soft
LOCAL_SRC_FILES := lib32/$(MY_SDK)/libawwmv12soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 32
include $(BUILD_PREBUILT)


ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_5_0))

# 1.libadecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libadecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libadecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 2.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 3. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 4.libaw_plugin
include $(CLEAR_VARS)
LOCAL_MODULE := libaw_plugin
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libaw_plugin.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 5.libnormal_audio
include $(CLEAR_VARS)
LOCAL_MODULE := libnormal_audio
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libnormal_audio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 6.liblive555
include $(CLEAR_VARS)
LOCAL_MODULE := liblive555
LOCAL_SRC_FILES := lib64/$(MY_SDK)/liblive555.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 7.librtp
include $(CLEAR_VARS)
LOCAL_MODULE := librtp
LOCAL_SRC_FILES := lib64/$(MY_SDK)/librtp.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 8.libawavs
include $(CLEAR_VARS)
LOCAL_MODULE := libawavs
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawavs.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 9.libawh264
include $(CLEAR_VARS)
LOCAL_MODULE := libawh264
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh264.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 10.libawh265
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh265.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 11.libawh265soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh265soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 12.libawmjpeg
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpeg
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 13.libawmjpegplus
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpegplus
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmjpegplus.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 14.libawmpeg2
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg2
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 15.libawmpeg4base
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4base
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4base.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 16.libawmpeg4dx
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4dx
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4dx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 17.libawmpeg4h263
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4h263
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4h263.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 18.libawmpeg4normal
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4normal
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4normal.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 19.libawmpeg4vp6
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4vp6
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4vp6.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 20.libawvp6soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp6soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp6soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 21.libawvp8
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp8
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp8.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 22.libawvp9soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp9soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp9soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 23.libawwmv3
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv3
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawwmv3.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 24.libawwmv12soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv12soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawwmv12soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

endif

ifeq ($(CONFIG_OS_VERSION), $(OPTION_OS_VERSION_ANDROID_6_0))
ifeq ($(CONFIG_CHIP), $(OPTION_CHIP_1689))

# 1.libadecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libadecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libadecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 2.libsdecoder
include $(CLEAR_VARS)
LOCAL_MODULE := libsdecoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libsdecoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 3. libvencoder
include $(CLEAR_VARS)
LOCAL_MODULE := libvencoder
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libvencoder.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 4.libaw_plugin
include $(CLEAR_VARS)
LOCAL_MODULE := libaw_plugin
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libaw_plugin.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 5.libnormal_audio
include $(CLEAR_VARS)
LOCAL_MODULE := libnormal_audio
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libnormal_audio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 6.liblive555
include $(CLEAR_VARS)
LOCAL_MODULE := liblive555
LOCAL_SRC_FILES := lib64/$(MY_SDK)/liblive555.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 7.librtp
include $(CLEAR_VARS)
LOCAL_MODULE := librtp
LOCAL_SRC_FILES := lib64/$(MY_SDK)/librtp.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 8.libawavs
include $(CLEAR_VARS)
LOCAL_MODULE := libawavs
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawavs.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 9.libawh264
include $(CLEAR_VARS)
LOCAL_MODULE := libawh264
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh264.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 10.libawh265
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh265.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 11.libawh265soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawh265soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawh265soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 12.libawmjpeg
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpeg
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 13.libawmjpegplus
include $(CLEAR_VARS)
LOCAL_MODULE := libawmjpegplus
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmjpegplus.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 14.libawmpeg2
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg2
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg2.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 15.libawmpeg4base
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4base
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4base.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 16.libawmpeg4dx
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4dx
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4dx.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 17.libawmpeg4h263
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4h263
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4h263.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 18.libawmpeg4normal
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4normal
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4normal.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 19.libawmpeg4vp6
include $(CLEAR_VARS)
LOCAL_MODULE := libawmpeg4vp6
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawmpeg4vp6.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 20.libawvp6soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp6soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp6soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 21.libawvp8
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp8
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp8.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 22.libawvp9soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawvp9soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawvp9soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 23.libawwmv3
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv3
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawwmv3.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

# 24.libawwmv12soft
include $(CLEAR_VARS)
LOCAL_MODULE := libawwmv12soft
LOCAL_SRC_FILES := lib64/$(MY_SDK)/libawwmv12soft.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := 64
include $(BUILD_PREBUILT)

endif
endif
