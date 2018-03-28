HELLOWORLD_VERSION = master
HELLOWORLD_SITE = git://github.com/alexlinuxp/helloworld.git
HELLOWORLD_INSTALL_TARGET = YES
HELLOWORLD_INSTALL_STAGING = YES
	


define HELLOWORLD_BUILD_CMDS
  $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

