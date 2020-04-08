packages=( openwrt-fullconenat luci-app-zerotier luci-app-xlnetacc luci-app-mwan3helper luci-app-syncdial luci-app-wrtbwmon luci-app-netdata luci-app-arpbind ddns-scripts_aliyun ddns-scripts_dnspod )

git -C ../ clone --depth 1 https://github.com/coolsnowwolf/lede.git lean-lede
mkdir package/lean

for i in "${packages[@]}"
do
    cp -r ../lean-lede/package/lean/$i package/lean
done
rm ../lean-lede -rf
