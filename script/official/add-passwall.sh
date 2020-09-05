git -C ../ clone --depth 1 https://github.com/xiaorouji/openwrt-package passwall-packages
mkdir -p package/lienol
cp -r ../passwall-packages/lienol/luci-app-passwall	package/lienol
rm ../passwall-packages -rf
