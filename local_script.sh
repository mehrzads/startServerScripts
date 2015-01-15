#!/bin/bash
sudo apt-get update
sudo apt-get --assume-yes install git build-essential gfortran
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
wget http://web.eecs.umich.edu/~mehrzads/SLmake.inc
make
cd ..
git clone https://github.com/mehrzads/gemm.git
# $Id: $


