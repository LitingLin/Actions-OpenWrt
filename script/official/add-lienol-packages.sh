packages=( brook tcping )

git -C ../ clone --depth 1 https://github.com/Lienol/openwrt-package.git lienol-packages
mkdir -p package/lienol

for i in "${packages[@]}"
do
    cp -r ../lienol-packages/package/$i package/lienol
done
rm ../lienol-packages -rf
