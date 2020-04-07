sed -i 's/#MAKE_FLAGS += LDFLAGS="-L$(STAGING_DIR)\/usr\/lib"/MAKE_FLAGS += LDFLAGS="-ldl"/g' ./feeds/lienol/package/ipt2socks/Makefile
