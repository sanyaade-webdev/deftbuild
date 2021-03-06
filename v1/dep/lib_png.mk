
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := png
PRJ_DEPS := png
PRJ_TYPE := lib
PRJ_INCS := zlib
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
LOC_CXX_def := c
LOC_INC_def := $(CFG_LIBROOT)/png
LOC_SRC_def := $(CFG_LIBROOT)/png
LOC_EXC_def := example
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk


