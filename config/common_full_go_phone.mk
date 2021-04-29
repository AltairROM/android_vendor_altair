# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Altair ROM stuff
$(call inherit-product, vendor/altair/config/common_full_phone.mk)
