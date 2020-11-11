wget https://github.com/vernesong/OpenClash/archive/v0.40.7-beta.tar.gz -O ../openclash.tar.gz
mkdir ../openclash
tar -xzf ../openclash.tar.gz -C ../openclash
mkdir -p package/luci-app-openclash
mv ../openclash/*/luci-app-openclash package/luci-app-openclash/
rm -rf ../openclash/
rm ../openclash.tar.gz

pushd package/luci-app-openclash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
