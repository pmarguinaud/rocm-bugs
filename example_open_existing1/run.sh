#!/bin/bash

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

set -x

FC="amdflang -Wl,--export-dynamic -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -O1 -g"

$FC -c yomvirt1.F90 -o yomvirt1.F90.o
$FC -c example_open_existing.F90 -o example_open_existing.F90.o
\rm -f libodb.a
ar crv libodb.a yomvirt1.F90.o
$FC example_open_existing.F90.o -o example_open_existing.x libodb.a libodb.a 

