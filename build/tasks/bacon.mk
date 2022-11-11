# SPDX-FileCopyrightText: Unlegacy-Android
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: Altair ROM Project
# SPDX-License-Identifier: Apache-2.0

# -----------------------------------------------------------------
# Lineage OTA update package

LINEAGE_TARGET_PACKAGE := $(PRODUCT_OUT)/$(LINEAGE_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

$(LINEAGE_TARGET_PACKAGE): $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LINEAGE_TARGET_PACKAGE)
	$(hide) $(SHA256) $(LINEAGE_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(LINEAGE_TARGET_PACKAGE).sha256sum
	$(hide) rm -rf $(call intermediates-dir-for,PACKAGING,target_files)
	@echo " "
	@echo "Package Complete: $(LINEAGE_TARGET_PACKAGE)" >&2
	@echo " "
	@echo " "
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_BLU}"  █████╗ ██╗  ████████╗ █████╗ ██╗██████╗     ██████╗  ██████╗ ███╗   ███╗ "${CL_RST}
	@echo -e ${CL_BLU}" ██╔══██╗██║  ╚══██╔══╝██╔══██╗██║██╔══██╗    ██╔══██╗██╔═══██╗████╗ ████║ "${CL_RST}
	@echo -e ${CL_BLU}" ███████║██║     ██║   ███████║██║██████╔╝    ██████╔╝██║   ██║██╔████╔██║ "${CL_RST}
	@echo -e ${CL_BLU}" ██╔══██║██║     ██║   ██╔══██║██║██╔══██╗    ██╔══██╗██║   ██║██║╚██╔╝██║ "${CL_RST}
	@echo -e ${CL_BLU}" ██║  ██║███████╗██║   ██║  ██║██║██║  ██║    ██║  ██║╚██████╔╝██║ ╚═╝ ██║ "${CL_RST}
	@echo -e ${CL_BLU}" ╚═╝  ╚═╝╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ "${CL_RST}
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo -e ${CL_WHT}" Path:"${CL_BOLD}${CL_GRN} $(PRODUCT_OUT)${CL_RST}
	@echo -e ${CL_WHT}" File:"${CL_BOLD}${CL_GRN} $(LINEAGE_VERSION)${CL_RST}
	@echo -e ${CL_WHT}" Size:"${CL_BOLD}${CL_GRN}" `ls -lah $(LINEAGE_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_WHT}"═══════════════════════════════════════════════════════════════════════════"${CL_RST}
	@echo " "

.PHONY: bacon
bacon: $(LINEAGE_TARGET_PACKAGE) $(DEFAULT_GOAL)
