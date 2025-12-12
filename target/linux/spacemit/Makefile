# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2025 Andreas Gnau
#
include $(TOPDIR)/rules.mk

ARCH:=riscv64
BOARD:=spacemit
BOARDNAME:=SpacemiT
FEATURES:=usb ext4
KERNELNAME:=Image dtbs

KERNEL_PATCHVER:=6.12

include $(INCLUDE_DIR)/target.mk

define Target/Description
	Build firmware images for SpacemiT boards
endef

$(eval $(call BuildTarget))
