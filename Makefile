ARCHS = arm64 arm64e
TARGET = iphone:clang:13.2:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YTStockVolumeHUD

YTStockVolumeHUD_FILES = Tweak.xm
YTStockVolumeHUD_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall YouTube"