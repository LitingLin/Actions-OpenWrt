sed -i '$a\src-git lienol https:\/\/github.com\/Lienol\/openwrt-package' feeds.conf.default
./scripts/feeds update -a
