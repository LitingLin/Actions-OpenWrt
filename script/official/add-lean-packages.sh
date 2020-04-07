packages=( openwrt-fullconenat luci-app-flowoffload luci-app-zerotier luci-app-xlnetacc luci-app-mwan3helper luci-app-syncdial )

git -C ../ clone --depth 1 https://github.com/coolsnowwolf/lede.git lean-lede
mkdir packages/lean

for i in "${packages[@]}"
do
    cp -r ../lean-lede/packages/lean/$i packages/lean
done
rm ../lean-lede
