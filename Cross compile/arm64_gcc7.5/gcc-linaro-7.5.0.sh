#!/bin/bash

cp config_arm64 /tmp/

cd /tmp

mkdir /opt/toolchain/

wget https://releases.linaro.org/components/toolchain/binaries/7.5-2019.12/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz
xz -d gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz
tar -xvf gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar -C /opt/toolchain/

cp /etc/bash.bashrc /etc/bash.bashrc_gcc7.5_arm64
cat config_arm64 >> /etc/bash.bashrc_gcc7.5_arm64
source /etc/bash.bashrc_gcc7.5_arm64