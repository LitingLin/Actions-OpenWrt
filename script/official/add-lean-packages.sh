git -C ../ clone --depth 1 https://github.com/coolsnowwolf/lede.git lean-lede

mv ../lean-lede/package/lean package/
rm -rf package/lean/auto*
rm -rf package/lean/default-settings
sed -i 's/$(STAGING_DIR_HOST)\/bin\/upx --lzma --best $(GO_PKG_BUILD_BIN_DIR)\/v2ray-plugin//g' package/lean/v2ray-plugin/Makefile
sed -i 's/$(STAGING_DIR_HOST)\/bin\/upx --lzma --best $$(1)\/usr\/bin\/$(1)//g' package/lean/frp/Makefile
rm ../lean-lede -rf
sed -i '$a\src-git helloworld https:\/\/github.com\/fw876\/helloworld' feeds.conf.default
