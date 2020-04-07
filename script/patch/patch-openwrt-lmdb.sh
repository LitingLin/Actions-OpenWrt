sed -i 's/LDFLAGS+="$(TARGET_LDFLAGS)"/LDFLAGS+="$(TARGET_LDFLAGS) -lpthread"/g' ./feeds/packages/libs/lmdb/Makefile
