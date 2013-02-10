ARCHS=armv7 armv7s
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 6.0
TARGET_CC = xcrun -sdk iphoneos clang 
TARGET_CXX = xcrun -sdk iphoneos clang++
TARGET_LD = xcrun -sdk iphoneos clang++
SHARED_CFLAGS = -fobjc-arc

include theos/makefiles/common.mk

TWEAK_NAME = BrightnessFix
BrightnessFix_FILES = Tweak.xm
BrightnessFix_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
