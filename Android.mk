LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lua_static

LOCAL_MODULE_FILENAME := liblua

LOCAL_CFLAGS := -DLUA_COMPAT_ALL
LOCAL_SRC_FILES := \
src/lapi.c      src/lcode.c     src/ldebug.c  src/lgc.c     src/lmathlib.c     src/lobject.c   src/lstate.c   src/ltablib.c  src/lundump.c \
src/lauxlib.c   src/lcorolib.c  src/ldo.c     src/linit.c   src/lmem.c         src/lopcodes.c  src/lstring.c  src/ltm.c      src/lvm.c \
src/lbaselib.c  src/lctype.c    src/ldump.c   src/liolib.c  src/loadlib.c      src/loslib.c    src/lstrlib.c  src/lua.c      src/lzio.c \
src/lbitlib.c   src/ldblib.c    src/lfunc.c   src/llex.c    src/loadlib_rel.c  src/lparser.c   src/ltable.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src

include $(BUILD_STATIC_LIBRARY)
