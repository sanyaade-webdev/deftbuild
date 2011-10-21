
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := bzip2
PRJ_DEPS := bzip2
PRJ_TYPE := lib
PRJ_INCS := 
PRJ_LIBS := 
PRJ_OBJROOT := _0_dep

PRJ_LIBROOT := ..

#-------------------------------------------------------------------
# Configure build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/config.mk

#-------------------------------------------------------------------
# File locations
#-------------------------------------------------------------------
export LOC_TAG := def
LOC_CXX_def := c
LOC_INC_def := $(CFG_LIBROOT)/bzip2
LOC_SRC_def := $(CFG_LIBROOT)/bzip2
LOC_EXC_def := bzip2 bzip2recover dlltest mk251 spewG unzcrash
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk

