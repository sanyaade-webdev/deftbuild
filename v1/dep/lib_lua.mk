
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := lua
PRJ_DEPS := lua
PRJ_TYPE := lib
PRJ_INCS := 
PRJ_LIBS := 
PRJ_DEFS :=
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
LOC_SRC_def := $(CFG_LIBROOT)/lua/src
LOC_EXC_def := lua
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk


