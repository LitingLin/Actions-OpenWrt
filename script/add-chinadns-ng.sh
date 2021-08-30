packages=( chinadns-ng )

mkdir -p package/lienol

for i in "${packages[@]}"
do
    svn co https://github.com/xiaorouji/openwrt-passwall/trunk/$i package/lienol/$i
done
