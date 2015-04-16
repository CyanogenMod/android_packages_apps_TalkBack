#
# Copyright (C) 2014 Cyanogen, Inc.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := talkback-utils
LOCAL_REQUIRED_MODULES := talkback-compatutils

LOCAL_SDK_VERSION := 18

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := \
	talkback-compatutils \
    android_midi_lib

include $(BUILD_STATIC_JAVA_LIBRARY)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
	android_midi_lib:libs/android_midi_lib.jar

include $(BUILD_MULTI_PREBUILT)