include $(TOPDIR)/rules.mk

PKG_NAME:=subconverter
PKG_VERSION:=0.6.4
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/tindy2013/subconverter/releases/download/v$(PKG_VERSION)
PKG_SOURCE:=subconverter_linux64.tar.gz
PKG_HASH:=9843bf8210041d03a17fd92eb36d89ba52122a214ce926e593eddcbe5e37685c
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

PKG_MAINTAINER:=Project OpenWrt
PKG_LICENSE:=GPLv3

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Utility to convert between various subscription format.
	URL:=https://github.com/tindy2013/subconverter
	DEPENDS:=@TARGET_x86_64
endef

define Package/$(PKG_NAME)/description
	Utility to convert between various subscription format.
endef

define Build/Compile
	true
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/subconverter $(1)/usr/bin/subconverter
	$(INSTALL_DIR) $(1)/etc/subconverter
	#$(RM) $(PKG_BUILD_DIR)/subconverter
	$(CP) $(PKG_BUILD_DIR)/*.ini $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/*.yml $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/base $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/config $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/profiles $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/rules $(1)/etc/subconverter/
	$(CP) $(PKG_BUILD_DIR)/snippets $(1)/etc/subconverter/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/subconverter.init $(1)/etc/init.d/subconverter
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
