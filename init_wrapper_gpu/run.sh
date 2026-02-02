#!/bin/bash

set -x

for f in *.F90
do
  prog=$(basename $f .F90)
  amdflang -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -o $prog $f
  ./$prog
done
