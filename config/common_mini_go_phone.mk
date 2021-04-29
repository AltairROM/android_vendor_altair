# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Altair ROM stuff
$(call inherit-product, vendor/altair/config/common_mini_phone.mk)
