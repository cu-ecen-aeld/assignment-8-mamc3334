
##############################################################
#
# LDD
#
##############################################################

#Reference assignment 7 git contents
LDD_VERSION = 78c6dc6c7462ff92b92e3f51cd24314fc4b2f52c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-mamc3334.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
# TODO add server application
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/etc/init.d/module_load
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/etc/init.d/module_unload
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/etc/init.d/scull_load
endef

$(eval $(generic-package))
