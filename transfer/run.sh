#!/bin/bash

set -x
set -e

\rm -f *.o *.mod

FC="amdflang -march=native  -Qunused-arguments -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp -Werror -fPIC -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice"

$FC -o transfer.x transfer.F90

for i in $(seq 10)
do
./transfer.x 
done
