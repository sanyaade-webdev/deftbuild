
# Code signing
ifeq ($(PRJ_PACK),apk)

BLD_PACKAGE := $(CFG_OUTROOT)/$(PRJ_NAME)
BLD_PACKAGE_LIBS := $(CFG_OBJROOT)/_pkg
BLD_PACKAGE_OBJP := $(BLD_PACKAGE_LIBS)/lib/armeabi
BLD_PACKAGE_SRC := $(GO_FINAL)
BLD_PACKAGE_DST := $(BLD_PACKAGE_OBJP)/$(BLD_FILE_EXE)

$(BLD_PACKAGE_OBJP):
	$(CFG_MD) $@

$(BLD_PACKAGE_OBJP)/%: $(BLD_PACKAGE_OBJP) $(GO_FINAL) 
	$(shell $(CFG_CPY) "$(BLD_PACKAGE_SRC)" "$@")

# -S $(CFG_CUR_ROOT)/$(BLD_PACKAGE_LIBS)

# Build resource zip file
$(BLD_PACKAGE).$(CFG_ZIP_POST): $(BLD_DEPENDS_TOTAL) $(BLD_PACKAGE_DST)
	$(CFG_ANDROID_AAPT) package -f -M $(CFG_CUR_ROOT)/$(PRJ_MANIFEST) -F $(CFG_CUR_ROOT)/$@ -I $(CFG_CUR_ROOT)/$(CFG_ANDROID_JAR) -S $(CFG_CUR_ROOT)/$(PRJ_RESOURCE)

# Build .dex file
$(BLD_PACKAGE).$(CFG_DEX_POST): $(BLD_PACKAGE).$(CFG_ZIP_POST)
	$(CFG_ANDROID_DX) --output=$(CFG_CUR_ROOT)/$@ $(BLD_JAVAROOT_TOTAL)

# Build .apk file
$(BLD_PACKAGE).$(CFG_APK_POST): $(BLD_PACKAGE).$(CFG_DEX_POST)
	$(CFG_ANDROID_APKBUILDER) $(CFG_CUR_ROOT)/$@ -u -z $(CFG_CUR_ROOT)/$(BLD_PACKAGE).$(CFG_ZIP_POST) -f $(CFG_CUR_ROOT)/$(BLD_PACKAGE).$(CFG_DEX_POST) -rf $(CFG_CUR_ROOT)/$(BLD_PACKAGE_LIBS)

# zip -r my.apk <folder_to_add>
# zipalign -v 4 bin/unsigned.apk bin/signed.apk

# new dependency
GO_PKG_FILE := $(BLD_PACKAGE).$(CFG_APK_POST)
GO_FINAL := $(BLD_PACKAGE).$(CFG_APK_POST)
	
# PRJ_PACK = apk
endif
