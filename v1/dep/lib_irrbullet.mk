
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := irrbullet
PRJ_DEPS := irrbullet
PRJ_TYPE := lib
PRJ_INCS := irrbullet/include irrbullet/include/bheaders irrlicht/include bullet/src
PRJ_LIBS := 

PRJ_LIBROOT := ..
PRJ_OBJROOT := _0_dep

#-------------------------------------------------------------------
# Configure build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/config.mk

#-------------------------------------------------------------------
# File locations
#-------------------------------------------------------------------

export LOC_TAG := def
LOC_SRC_def := $(CFG_LIBROOT)/irrbullet/source
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk


