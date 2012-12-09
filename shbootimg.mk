LOCAL_PATH := $(call my-dir) 

MASTER_BOOTSTRAP := $(PRODUCT_OUT)/bootstrap.cpio.gz
$(MASTER_BOOTSTRAP): $(INSTALLED_RAMDISK_TARGET) $(recovery_ramdisk) $(HOST_OUT)/bin/mkbootfs $(PRODUCT_OUT)/utilities/busybox
	$(call pretty,"Bootstrap: $@")
	cp -r device/samsung/galaxysl/bootstrap $(PRODUCT_OUT)
	cp -r device/samsung/galaxysl/bootstrap.sh $(PRODUCT_OUT)
	$(PRODUCT_OUT)/bootstrap.sh

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(INSTALLED_KERNEL_TARGET) $(MASTER_BOOTSTRAP)
	$(call pretty,"Boot image: $@")

	$(HOST_OUT)/bin/mkbootimg --kernel $(INSTALLED_KERNEL_TARGET) --ramdisk $(MASTER_BOOTSTRAP) --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --output $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(INSTALLED_BOOTIMAGE_TARGET)
	$(ACP) $(INSTALLED_BOOTIMAGE_TARGET) $@
