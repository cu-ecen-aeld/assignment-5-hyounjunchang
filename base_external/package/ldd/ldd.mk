
##############################################################
#
# ldd
#
##############################################################

# Claude chat history: https://claude.ai/chat/52a7fcbb-e345-4cd7-ab27-c090f0d200f7

LDD_VERSION = ee4de8b03cc26f91c6ac853865bfbea7f6f1bd23
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-hyounjunchang.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# Makefile in directory builds all submodules
define LDD_BUILD_CMDS
	$(MAKE) -C $(LINUX_DIR) M=$(@D) $(LINUX_MAKE_FLAGS)
endef

define LDD_INSTALL_TARGET_CMDS
	find $(@D) -name "*.ko" | xargs -I{} $(INSTALL) -m 755 {} $(TARGET_DIR)/lib/modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
