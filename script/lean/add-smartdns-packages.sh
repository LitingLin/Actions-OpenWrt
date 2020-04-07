git -C ./feeds/packages/net/ clone --depth 1 https://github.com/pymumu/openwrt-smartdns.git smartdns
git -C ./feeds/luci/applications/ clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git -b lede
sed -e "s/+luci-compat //g" -i ./feeds/luci/applications/luci-app-smartdns/Makefile