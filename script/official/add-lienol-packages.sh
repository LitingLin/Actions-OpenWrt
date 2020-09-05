packages=( brook tcping trojan-go trojan-plus naiveproxy )

git -C ../ clone --depth 1 https://github.com/xiaorouji/openwrt-package lienol-packages
mkdir -p package/lienol

for i in "${packages[@]}"
do
    cp -r ../lienol-packages/package/$i package/lienol
done
rm ../lienol-packages -rf
