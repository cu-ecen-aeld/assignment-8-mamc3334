
##############################################################
#
# AESDCHAR
#
##############################################################

#Reference assignment 7 git contents
AESDCHAR_VERSION = 51a2031113ca2b3f978becf6de7bf3c6b1f0e6e1
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-mamc3334.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))
$(eval $(generic-package))
