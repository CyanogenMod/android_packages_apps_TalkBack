#
# Copyright (C) 2014 Cyanogen, Inc.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := TalkBack
LOCAL_REQUIRED_MODULES := talkback-compatutils \
                          talkback-utils \
                          talkback-radial-widget

LOCAL_SDK_VERSION := 18

LOCAL_STATIC_JAVA_LIBRARIES := \
	talkback-compatutils \
    talkback-utils \
    talkback-radial-widget

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets

res_dir := res \
	../radial_widget/res/

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dir))

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true
LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_AAPT_FLAGS += --extra-packages com.googlecode.eyesfree.widget

include $(BUILD_PACKAGE)