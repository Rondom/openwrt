
define Device/Default
  PROFILES = Default $$(DEVICE_NAME)
  SOC := k1
  DEVICE_DTS_DIR := $(DTS_DIR)/spacemit
  KERNEL = kernel-bin | lzma
  KERNEL_INITRAMFS = kernel-bin | lzma | \
	fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb with-initrd | pad-to 128k
  KERNEL_LOADADDR := 0x20000000
  FILESYSTEMS := squashfs
  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin = append-kernel | fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb external-static-with-rootfs | pad-rootfs | append-metadata
endef

define Device/bananapi_bpi-f3
  DEVICE_VENDOR := Bananapi
  DEVICE_MODEL := BPI-F3
  DEVICE_DTS := $$(SOC)-bananapi-f3
endef
TARGET_DEVICES += bananapi_bpi-f3
