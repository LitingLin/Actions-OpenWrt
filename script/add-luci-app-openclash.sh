mkdir -p package/luci-app-openclash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
