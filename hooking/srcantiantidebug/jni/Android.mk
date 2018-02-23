LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := SLST 
LOCAL_SRC_FILES := A_Anit_Dbg.cpp
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)
