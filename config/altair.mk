# Dark mode backgrounds
PRODUCT_PACKAGES += \
    LineageBlackBackground \
    LineageDarkGrayBackground \
    LineageMatteBlackBackground \
    LineageSolarizedBackground

# Blur
ifneq ($(TARGET_DISABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    ComicSansFont \
    GoogleSansFont \
    LineageLatoFont \
    LineageRubikFont