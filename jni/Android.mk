#Android.mk
LOCAL_PATH := $(call my-dir)

#第三方的编译模块
include $(CLEAR_VARS)
LOCAL_MODULE    := test
LOCAL_SRC_FILES := bb.cpp
#下面是申明第三方头文件路径
LOCAL_EXPORT_C_INCLUDES := bb.h 
include $(BUILD_SHARED_LIBRARY)

#自己的编译模块
include $(CLEAR_VARS)
LOCAL_MODULE    := aa
LOCAL_SRC_FILES := aa.cpp bb.h
LOCAL_LDLIBS    += -L$(SYSROOT)/lib -llog
LOCAL_CFLAGS    := -g
#这里引入第三方编译模块
LOCAL_SHARED_LIBRARIES := libtest.so
include $(BUILD_SHARED_LIBRARY)