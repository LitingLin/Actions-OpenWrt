git -C ../ clone --depth 1 https://github.com/pymumu/openwrt-smartdns.git smartdns-packages
mkdir -p ./feeds/packages/net/smartdns/
cp -r ../smartdns-packages/* ./feeds/packages/net/smartdns/
rm ../smartdns-packages -rf
