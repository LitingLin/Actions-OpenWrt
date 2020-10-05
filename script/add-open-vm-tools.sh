git -C ../ clone --depth 1 https://github.com/srchack/custom-packages open-vm-tools
mkdir -p package/open-vm-tools

mv ../open-vm-tools/open-vm-tools package/open-vm-tools
rm -rf ../open-vm-tools
