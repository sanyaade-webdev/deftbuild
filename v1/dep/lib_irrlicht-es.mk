
default_target: all

#-------------------------------------------------------------------
# Project
#-------------------------------------------------------------------
PRJ_NAME := irrlicht-es
PRJ_TYPE := lib
PRJ_INCS := irrlicht-es/source/Irrlicht/zlib
PRJ_LIBS := 
PRJ_DEFS := GL_APIENTRY= glTexEnvi=glTexEnvx \
		    EGL_RENDERABLE_TYPE=0x3040 EGL_OPENGL_ES_BIT=0x0001 EGL_CLIENT_APIS=0x308D

PRJ_LIBROOT := ..
PRJ_OBJROOT := _0_dep

#-------------------------------------------------------------------
# Configure build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/config.mk

ifeq ($(3D),)
UNSUPPORTED := Set make option 3D=1 to build
include $(PRJ_LIBROOT)/unsupported.mk
else

ifeq ($(PROC),i386)
UNSUPPORTED := PROC=$(PROC) not supported
include $(PRJ_LIBROOT)/unsupported.mk
else

ifeq ($(TOOLS),iphone)
	PRJ_INCS := $(PRJ_INCS) ogles/include
#	PRJ_DEFS := _IRR_IPHONE_PLATFORM_ _IRR_USE_IPHONE_DEVICE_
endif

ifeq ($(PLATFORM),windows)
	PRJ_DEFS := _IRR_STATIC_LIB_
	ifeq ($(OS),wince)
		PRJ_DEFS := $(PRJ_DEFS)
		PRJ_INCS := $(PRJ_INCS) ogles/include
	else
		PRJ_DEFS := $(PRJ_DEFS) _IRR_COMPILE_WITH_OPENGL_
	endif	
endif

#-------------------------------------------------------------------
# File locations
#-------------------------------------------------------------------

ifeq ($(OS),win32)
CFG_CFLAGS := $(CFG_CFLAGS) /DIRRLICHT_EXPORTS
endif

export LOC_TAG := def
LOC_INC_def := $(CFG_LIBROOT)/irrlicht-es/include
LOC_SRC_def := $(CFG_LIBROOT)/irrlicht-es/source/Irrlicht
include $(PRJ_LIBROOT)/build.mk

#-------------------------------------------------------------------
# Execute the build
#-------------------------------------------------------------------
include $(PRJ_LIBROOT)/go.mk

endif

endif

