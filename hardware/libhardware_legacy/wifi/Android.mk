# Copyright 2006 The Android Open Source Project

ifdef WIFI_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH=\"$(WIFI_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_DRIVER_MODULE_PATH2
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH2=\"$(WIFI_DRIVER_MODULE_PATH2)\"
endif
ifdef WIFI_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_ARG=\"$(WIFI_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_AP_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_AP_ARG=\"$(WIFI_DRIVER_MODULE_AP_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME=\"$(WIFI_DRIVER_MODULE_NAME)\"
endif
ifdef WIFI_DRIVER_MODULE_NAME2
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME2=\"$(WIFI_DRIVER_MODULE_NAME2)\"
endif
ifdef WIFI_FIRMWARE_LOADER
LOCAL_CFLAGS += -DWIFI_FIRMWARE_LOADER=\"$(WIFI_FIRMWARE_LOADER)\"
endif
ifdef WIFI_DRIVER_LOADER_DELAY
LOCAL_CFLAGS += -DWIFI_DRIVER_LOADER_DELAY=$(WIFI_DRIVER_LOADER_DELAY)
endif
ifdef WIFI_DRIVER_FW_PATH_STA
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_STA=\"$(WIFI_DRIVER_FW_PATH_STA)\"
endif
ifdef WIFI_DRIVER_FW_PATH_AP
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_AP=\"$(WIFI_DRIVER_FW_PATH_AP)\"
endif
ifdef WIFI_DRIVER_FW_PATH_P2P
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_P2P=\"$(WIFI_DRIVER_FW_PATH_P2P)\"
endif
ifdef WIFI_DRIVER_FW_PATH_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif
ifdef WIFI_EXT_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_PATH=\"$(WIFI_EXT_MODULE_PATH)\"
endif
ifdef WIFI_EXT_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_ARG=\"$(WIFI_EXT_MODULE_ARG)\"
endif
ifdef WIFI_EXT_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_EXT_MODULE_NAME=\"$(WIFI_EXT_MODULE_NAME)\"
endif

LOCAL_SRC_FILES += wifi/wifi.c

ifeq ($(BOARD_HAVE_SAMSUNG_WIFI),true)
LOCAL_CFLAGS += -DSAMSUNG_WIFI
endif

LOCAL_SHARED_LIBRARIES += libnetutils
