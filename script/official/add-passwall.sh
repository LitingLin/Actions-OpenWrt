git -C ../ clone --depth 1 https://github.com/dong50252409/openwrt-package passwall-packages
mkdir -p package/lienol
cp -r ../passwall-packages/lienol/luci-app-passwall	package/lienol
rm ../passwall-packages -rf
RULE_PATH=package/lienol/luci-app-passwall/root/usr/share/passwall/rules/
rm ${RULE_PATH}gfwlist.conf
wget -O ${RULE_PATH}gfwlist.conf https://raw.githubusercontent.com/hq450/fancyss/master/rules/gfwlist.conf
rm ${RULE_PATH}chnlist
wget -O ${RULE_PATH}chnlist https://raw.githubusercontent.com/hq450/fancyss/master/rules/cdn.txt
rm ${RULE_PATH}chnroute
wget -O ${RULE_PATH}chnroute https://raw.githubusercontent.com/hq450/fancyss/master/rules/chnroute.txt