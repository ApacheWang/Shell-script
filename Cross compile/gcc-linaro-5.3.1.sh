#!/bin/bash

cp config_arm32 /tmp/

cd /tmp

mkdir /opt/toolchain/

wget https://releases.linaro.org/components/toolchain/binaries/5.3-2016.05/arm-linux-gnueabihf/gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
xz -d gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar.xz
tar -xvf gcc-linaro-5.3.1-2016.05-x86_64_arm-linux-gnueabihf.tar -C /opt/toolchain/

cp /etc/bash.bashrc /etc/bash.bashrc_gcc5.3_arm32.bak
cat config_arm32 >> /etc/bash.bashrc_gcc5.3_arm32.bak
source /etc/bash.bashrc_gcc5.3_arm32.bak