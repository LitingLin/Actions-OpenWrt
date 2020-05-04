sed -i 's/MAKE_FLAGS += LIBS="-l:libuv_a.a"/MAKE_FLAGS += LIBS="-l:libuv_a.a"\nMAKE_FLAGS += LDFLAGS="-ldl"/g' ./package/lean/ipt2socks/Makefile
