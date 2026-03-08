
##############################################################
#
# AESDCHAR
#
##############################################################

#Reference assignment 3 git contents
AESDCHAR_VERSION = 5372334e1e3e5c6a8a2546c93d9a923b3efb9222
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-mamc3334.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
