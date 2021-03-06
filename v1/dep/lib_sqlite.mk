
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := sqlite
PRJ_DEPS := sqlite
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

ifeq ($(PROC),arm)
	PRJ_DEFS := $(PRJ_DEFS) SQLITE_DISABLE_LFS
endif

# +++ Because of bugs in the android NDK, how anoying...
# sqlite/sqlite3.c:58805: internal compiler error: Segmentation fault
ifeq ($(OS),android)
UNSUPPORTED := OS=$(OS) is not supported
include $(PRJ_LIBROOT)/unsupported.mk
else

#-------------------------------------------------------------------
# File locations
#-------------------------------------------------------------------
export LOC_TAG := def
LOC_CXX_def := c
LOC_SRC_def := $(CFG_LIBROOT)/sqlite
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk

endif
