#!/bin/bash

set -x
set -e

hostname

source /home/afar/modules/use.sh
module load rocm
module load afar/22.3.0
export FC=flang
export F90=flang
export CC=clang
export CXX=clang++
module load openmpi/afar-22.3.0/5.0.9
module load cmake/3.31.7

if [ ! -d ecbuild ]
then
git clone https://github.com/ecmwf/ecbuild.git 
fi
if [ ! -d fiat ]
then
git clone https://github.com/ecmwf-ifs/fiat.git 
fi
if [ ! -d ectrans ]
then
git clone https://github.com/ecmwf-ifs/ectrans.git 
fi

if [ ! -d fftw-3.3.10 ]
then

if [ ! -f fftw-3.3.10.tar.gz ]
then
wget https://www.fftw.org/fftw-3.3.10.tar.gz
fi
tar zxvf fftw-3.3.10.tar.gz

mkdir -p fftw-3.3.10-build-d
cd fftw-3.3.10-build-d
cmake ../fftw-3.3.10 -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=$PWD/../install
make -j8 install
cd ..

mkdir -p fftw-3.3.10-build-s
cd fftw-3.3.10-build-s
cmake ../fftw-3.3.10 -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=$PWD/../install -DENABLE_FLOAT=ON
make -j8 install
cd ..

fi

export FFTW_ROOT=$PWD/install

\rm -rf fiat-build
mkdir -p fiat-build
cd fiat-build
cmake ../fiat -DCMAKE_Fortran_FLAGS="-fPIC" -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DCMAKE_INSTALL_PREFIX=$PWD/../install
make -j8 install
cd ..

\rm -rf ectrans-build
mkdir -p ectrans-build
cd ectrans-build
cmake ../ectrans -DCMAKE_PREFIX_PATH=$PWD/../install -DECTRANS_ENABLE_GPU=ON -DENABLE_HIP=ON -DENABLE_OMP=ON 
make -j8

