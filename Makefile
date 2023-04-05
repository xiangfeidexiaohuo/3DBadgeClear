export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:13.7:13.0

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 3DBadgeClear
BUNDLE_NAME = com.isklikas.3DBadgeClear-resources

3DBadgeClear_FILES = Tweak.x
3DBadgeClear_CFLAGS = -fobjc-arc
com.isklikas.3DBadgeClear-resources_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries

include $(THEOS)/makefiles/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk
