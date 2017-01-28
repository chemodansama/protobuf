LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := libprotobuf_lite

LOCAL_SRC_FILES :=\
	../../src/google/protobuf/arena.cc \
	../../src/google/protobuf/arenastring.cc \
	../../src/google/protobuf/extension_set.cc \
	../../src/google/protobuf/generated_message_util.cc \
	../../src/google/protobuf/io/coded_stream.cc \
	../../src/google/protobuf/io/zero_copy_stream.cc \
	../../src/google/protobuf/io/zero_copy_stream_impl_lite.cc \
	../../src/google/protobuf/message_lite.cc \
	../../src/google/protobuf/repeated_field.cc \
	../../src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc \
	../../src/google/protobuf/stubs/atomicops_internals_x86_msvc.cc \
	../../src/google/protobuf/stubs/bytestream.cc \
	../../src/google/protobuf/stubs/common.cc \
	../../src/google/protobuf/stubs/int128.cc \
	../../src/google/protobuf/stubs/once.cc \
	../../src/google/protobuf/stubs/status.cc \
	../../src/google/protobuf/stubs/statusor.cc \
	../../src/google/protobuf/stubs/stringpiece.cc \
	../../src/google/protobuf/stubs/stringprintf.cc \
	../../src/google/protobuf/stubs/structurally_valid.cc \
	../../src/google/protobuf/stubs/strutil.cc \
	../../src/google/protobuf/stubs/time.cc \
	../../src/google/protobuf/wire_format_lite.cc

LOCAL_CFLAGS := -DGOOGLE_PROTOBUF_NO_RTTI=1
LOCAL_CPPFLAGS := -std=c++1y
LOCAL_C_INCLUDES = $(LOCAL_PATH)/../../src

LOCAL_EXPORT_LDLIBS := -lz
LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_EXPORT_CPPFLAGS := $(LOCAL_CPPFLAGS)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)
