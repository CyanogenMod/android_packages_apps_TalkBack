#
# Copyright (C) 2014 Cyanogen, Inc.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := talkback-radial-widget
LOCAL_REQUIRED_MODULES := talkback-compatutils \
						  talkback-utils

LOCAL_SDK_VERSION := 18

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, res)

LOCAL_STATIC_JAVA_LIBRARIES := \
	talkback-compatutils \
    talkback-utils

include $(BUILD_STATIC_JAVA_LIBRARY)