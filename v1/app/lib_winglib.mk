
default_target: all

PRJ_LIBROOT := ..
PRJ_DEPS := winglib
include $(PRJ_LIBROOT)/config.mk

#-------------------------------------------------------------------
# winglib is native
#-------------------------------------------------------------------
all:
	$(MAKE) -C $(CFG_LIBROOT)/winglib

