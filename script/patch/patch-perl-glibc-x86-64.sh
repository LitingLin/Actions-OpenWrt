sed -i 's/ldflags="$ldflags -L$owrt:staging_dir\/lib"/ldflags="$ldflags -L$owrt:staging_dir\/lib -lssp"/g' ./feeds/packages/lang/perl/files/libc.config
