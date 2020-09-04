SSR_GIT_URL=$(cat ./package/lean/shadowsocksr-libev/Makefile | sed -n -e "s/^PKG_SOURCE_URL:=//p")
SSR_GIT_COMMIT=$(cat ./package/lean/shadowsocksr-libev/Makefile | sed -n -e "s/^PKG_SOURCE_VERSION:=//p")
cwd=$(pwd)
cd ..
git clone $SSR_GIT_URL shadowsocksr
cd shadowsocksr
git reset --hard $SSR_GIT_COMMIT
git config user.email "apply@patch"
git config user.name "apply_patch"
for p in `ls -v $cwd/package/lean/shadowsocksr-libev/patches/*.patch`; do patch -p1 < $p; done
git add .
git commit -m "apply patch 1"
sed -i 's/ -Werror//g' src/Makefile.am
sed -i 's/ -Werror//g' src/Makefile.in
sed -i 's/ -Werror//g' server/Makefile.am
sed -i 's/ -Werror//g' server/Makefile.in
git add .
git commit -m "apply patch 2"
#git diff HEAD~1 > $cwd/package/lean/shadowsocksr-libev/patches/9998-Remove-Werror.patch
#sed -i 's/const protocol_t *const tls_protocol;/extern const protocol_t *const tls_protocol;/g' src/tls.h
#sed -i 's/const protocol_t *const http_protocol;/extern const protocol_t *const http_protocol;/g' src/http.h
#git add .
#git commit -m "apply patch 3"
#git diff HEAD~1 > $cwd/package/lean/shadowsocksr-libev/patches/9999-gcc10-error.patch
#cd ..
#rm shadowsocksr -rf
#cd $cwd
