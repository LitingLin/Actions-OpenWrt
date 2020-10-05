git -C ../ clone --depth 1 https://github.com/pymumu/openwrt-smartdns.git smartdns
latest_commit_id=`git ls-remote https://github.com/pymumu/smartdns refs/heads/master | cut -f 1`
sed -i "s/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=$latest_commit_id/g" ../smartdns/Makefile
mv ../smartdns ./feeds/packages/net/

