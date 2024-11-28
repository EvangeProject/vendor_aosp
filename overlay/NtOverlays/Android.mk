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
    $(eval include $(CLEAR_VARS)) \
    $(eval LOCAL_MODULE := $(dir)) \
    $(eval LOCAL_SRC_FILES := $(dir)/$(dir).apk) \
    $(eval LOCAL_MODULE_CLASS := APPS) \
    $(eval LOCAL_CERTIFICATE := PRESIGNED) \
    $(eval LOCAL_MODULE_SUFFIX := .apk) \
    $(eval LOCAL_MODULE_TAGS := optional) \
    $(eval LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_OVERLAY)) \
    $(eval include $(BUILD_PREBUILT)) \
)

