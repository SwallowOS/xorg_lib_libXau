LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 21

LOCAL_MODULE := libXau

LOCAL_C_INCLUDES := \
	swallow/xorg/proto/xorgproto/include \
	swallow/xorg/lib/libfontenc/include \
	swallow/xorg/lib/libxtrans \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/include \


LOCAL_CFLAGS := 

LOCAL_SRC_FILES := \
	AuDispose.c \
	AuFileName.c \
	AuGetAddr.c \
	AuGetBest.c \
	AuLock.c \
	AuRead.c \
	AuUnlock.c \
	AuWrite.c


LOCAL_LDLIBS :=  -llog -lc -lm -ldl -lz

include $(BUILD_SHARED_LIBRARY)

