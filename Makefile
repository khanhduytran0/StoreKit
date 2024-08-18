TARGET := iphone:clang:latest:16.0
ARCHS = arm64
include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libswiftCoreFake libswiftCore StoreKit

libswiftCoreFake_FILES = libswiftCoreFake.c
libswiftCoreFake_LDFLAGS = -install_name /usr/lib/swift/libswiftCore.dylib
libswiftCoreFake_INSTALL_PATH = /usr/local/lib/swift

libswiftCore_FILES = libswiftCore.c
libswiftCore_LDFLAGS = -Xlinker -reexport_library $(THEOS_OBJ_DIR)/libswiftCoreFake.dylib
libswiftCore_INSTALL_PATH = /usr/local/lib/swift

StoreKit_FILES = StoreKit.swift StoreKit.x
StoreKit_CFLAGS = -fobjc-arc
StoreKit_SWIFTFLAGS = -enable-library-evolution
StoreKit_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
