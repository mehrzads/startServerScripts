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
su sgeadmin
cd ~
wget http://www.netlib.org/scalapack/scalapack.tgz
tar -xvzf scalapack.tgz
cd scalapack-2.0.2
wget http://web.eecs.umich.edu/~mehrzads/scripts/SLmake.inc
make
cd ..
echo "export LD_LIBRARY_PATH=/opt/OpenBLAS/lib/:/usr/lib/" >>~/.bashrc
source ~/.bashrc
git clone https://github.com/mehrzads/cloudAPI.git
cd ~/cloudAPI/Common/pb
make
cd ~/cloudAPI/Server
make
# $Id: $


