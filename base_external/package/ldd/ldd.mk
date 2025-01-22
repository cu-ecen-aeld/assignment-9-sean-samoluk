##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = e421010f7f225100bf5a098792323b6d5b913dd0
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-sean-samoluk.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

#BR2_ROOTFS_OVERLAY = ../base_external/rootfs_overlay

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
#endef

#$(INSTALL) -m 0755 $(@D)/scull/scull.ko ${TARGET_DIR}/lib/modules/$(uname -r)/kernel/ldd
#$(INSTALL) -m 0755 $(@D)/misc-modules/faulty.ko ${TARGET_DIR}/lib/modules/$(uname -r)/kernel/ldd
#$(INSTALL) -m 0755 $(@D)/misc-modules/hello.ko ${TARGET_DIR}/lib/modules/$(uname -r)/kernel/ldd

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below


$(eval $(kernel-module))
$(eval $(generic-package))
