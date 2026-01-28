#!/bin/bash

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

set -x

FC="amdflang -Wl,--export-dynamic -fopenmp -Wl,-z,execstack -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack -O1 -g"

for opt in "" "--offload-arch=gfx942 -lflang_rt.hostdevice"
do

\rm -f *.o *.mod *.a a.out

$FC $opt -c yomvirt1.F90 
$FC $opt -c example_open_existing.F90 
\rm -f libodb.a
ar crv libodb.a yomvirt1.o
$FC $opt example_open_existing.o libodb.a libodb.a 

\ls -l a.out

done
