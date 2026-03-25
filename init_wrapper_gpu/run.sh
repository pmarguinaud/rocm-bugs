#!/bin/bash

. ../prolog.sh

set -x
set -e

for f in *.F90
do
  prog=$(basename $f .F90)
  amdflang -fopenmp -Wl,-z,execstack --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -o $prog $f
  srun -p MI300X ./$prog
done
