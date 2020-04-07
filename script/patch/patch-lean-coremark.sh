sed -i 's/XCFLAGS="-DMULTITHREAD=16 -DUSE_PTHREAD"/XCFLAGS="-DMULTITHREAD=16 -DUSE_PTHREAD -lpthread"/g' ./package/lean/coremark/Makefile
sed -i 's/mkdir $(PKG_BUILD_DIR)\/$(ARCH)/mkdir -p $(PKG_BUILD_DIR)\/$(ARCH)/g' ./package/lean/coremark/Makefile
