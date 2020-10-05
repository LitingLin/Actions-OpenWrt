git -C ../ clone --depth 1 https://github.com/vernesong/OpenClash.git openclash
mkdir -p package/luci-app-openclash
mv ../openclash/luci-app-openclash package/luci-app-openclash/
rm -rf ../openclash/

pushd package/luci-app-openclash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
