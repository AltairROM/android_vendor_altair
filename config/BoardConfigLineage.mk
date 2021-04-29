include vendor/altair/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/altair/config/BoardConfigQcom.mk
endif

include vendor/altair/config/BoardConfigSoong.mk
