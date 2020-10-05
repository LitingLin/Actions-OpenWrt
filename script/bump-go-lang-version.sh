#!/bin/bash

git -C ../ clone --depth 1 https://github.com/coolsnowwolf/packages lean-packages

rm -rf ./feeds/packages/lang/golang
mv ../lean-packages/lang/golang ./feeds/packages/lang/
rm -rf ../lean-packages

