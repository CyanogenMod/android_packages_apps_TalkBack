#
# Copyright (C) 2014 Cyanogen, Inc.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := talkback-compatutils
LOCAL_SDK_VERSION := 18

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \

include $(BUILD_STATIC_JAVA_LIBRARY)