#Android.mk
LOCAL_PATH := $(call my-dir)

#�������ı���ģ��
include $(CLEAR_VARS)
LOCAL_MODULE    := test
LOCAL_SRC_FILES := bb.cpp
#����������������ͷ�ļ�·��
LOCAL_EXPORT_C_INCLUDES := bb.h 
include $(BUILD_SHARED_LIBRARY)

#�Լ��ı���ģ��
include $(CLEAR_VARS)
LOCAL_MODULE    := aa
LOCAL_SRC_FILES := aa.cpp bb.h
LOCAL_LDLIBS    += -L$(SYSROOT)/lib -llog
LOCAL_CFLAGS    := -g
#�����������������ģ��
LOCAL_SHARED_LIBRARIES := libtest.so
include $(BUILD_SHARED_LIBRARY)