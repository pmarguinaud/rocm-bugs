#!/bin/bash

\rm -f *.o *.mod


FC="flang -march=native  -Qunused-arguments -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp -Werror -fPIC -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice"

set -x
set -e

$FC -o transfer.x transfer.F90

for i in $(seq 10)
do
./transfer.x 
done
