APP_ABI := x86
APP_PLATFORM := android-9
APP_STL := gnustl_static
NDK_TOOLCHAIN_VERSION = clang

APP_CPPFLAGS := -DHAVE_PTHREAD -frtti -std=c++1y -fsigned-char -fexceptions \
								-Wno-extern-c-compat -Wno-inconsistent-missing-override \
								-Wno-deprecated-register -Wwrite-strings -Woverloaded-virtual \
								-Wno-sign-compare -Wno-unused-function
APP_LDFLAGS := -latomic
