# Lista das subpastas contendo os APKs
OVERLAY_DIRS := \
    IconShapePebbleOverlay \
    IconShapeRoundedOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeVesselOverlay \
    IconShapeTeardropOverlay \
    QuickSwitchOverlay

# Para cada diretório, inclua o APK correspondente
$(foreach dir, $(OVERLAY_DIRS), \
    include $(CLEAR_VARS) \
    LOCAL_MODULE := $(dir) \
    LOCAL_SRC_FILES := $(dir)/$(dir).apk \
    LOCAL_MODULE_CLASS := APPS \
    LOCAL_CERTIFICATE := PRESIGNED \
    LOCAL_MODULE_SUFFIX := .apk \
    LOCAL_MODULE_TAGS := optional \
    LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_OVERLAY) \
    include $(BUILD_PREBUILT) \
)

