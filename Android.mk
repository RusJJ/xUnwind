LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION     := .cpp .cc
LOCAL_MODULE            := xUnwind
LOCAL_SRC_FILES         := xunwind/src/main/cpp/xu_cfi.c xunwind/src/main/cpp/xu_eh.c xunwind/src/main/cpp/xu_formatter.c xunwind/src/main/cpp/xu_fp_arm64.c \
                           xunwind/src/main/cpp/xu_fp_unimplemented.c xunwind/src/main/cpp/xu_jni.c xunwind/src/main/cpp/xu_libbacktrace.c \
                           xunwind/src/main/cpp/xu_libcorkscrew.c xunwind/src/main/cpp/xu_libcxx.c xunwind/src/main/cpp/xu_printer.c \
                           xunwind/src/main/cpp/xu_util.c xunwind/src/main/cpp/xunwind.c xunwind/src/main/cpp/xunwind_ctor.c
LOCAL_CFLAGS            += -O2 -mfloat-abi=softfp -DNDEBUG
LOCAL_C_INCLUDES        += $(LOCAL_PATH)/xunwind/src/main/cpp/include
include $(BUILD_STATIC_LIBRARY)