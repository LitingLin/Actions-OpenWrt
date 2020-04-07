if grep -Fq "059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49" ./feeds/packages/lang/perl/Makefile
then
    cd ..
    mkdir perl
    cd perl
    wget https://cpan.metacpan.org/src/5.0/perl-5.28.0.tar.xz
    tar xf perl-5.28.0.tar.xz
    cd perl-5.28.0
    for p in `ls -v ../../openwrt/feeds/packages/lang/perl/patches/*.patch`; do patch -p1 < $p; done
    git init
    git config user.email "apply@patch"
    git config user.name "apply_patch"
    git add .
    git commit -m "first patch"
    sed -i '/#if defined(LIBM_LIB_VERSION) && (defined(__GLIBC__) || defined(__UCLIBC__))/c#if defined(LIBM_LIB_VERSION) && defined (__UCLIBC__)' perl.c
    git add .
    git commit -m "second patch"
    git diff HEAD~1 > ../../openwrt/feeds/packages/lang/perl/patches/999-fix-glibc-build.patch
    cd ../../
    rm perl -rf
    cd openwrt
else
    echo "No need to patch perl"
fi
