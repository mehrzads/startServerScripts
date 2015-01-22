#!/bin/bash
wget http://web.eecs.umich.edu/~mehrzads/scripts/sources.list
cp -rf sources.list /etc/apt/
sudo apt-get update
sudo apt-get --assume-yes install git build-essential gfortran  libtool libsnappy-dev
su sgeadmin
cd ~
git clone https://github.com/google/protobuf.git
cd protobuf
sh autogen.sh
./configure
make
exit
cd /home/sgeadmin/protobuf/
make install
ldconfig
su sgeadmin
cd ~
git clone git://github.com/xianyi/OpenBLAS
cd OpenBLAS
make
exit
cd /home/sgeadmin/OpenBLAS
make install
# $Id: $


