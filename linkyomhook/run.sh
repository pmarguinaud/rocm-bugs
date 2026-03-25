#!/bin/bash

set -x
set -e

for f90 in yomhook.F90 main_acdrag.F90 
do
gfortran  \
  -fPIC -O0 -fopenmp -c $f90
done

gfortran  \
  -fPIC -O0 -fopenmp -o ./main_acdrag.x main_acdrag.o yomhook.o


FCFLAGS="-O0 -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice"

for f90 in yomhook.F90 main_acdrag.F90
do
  amdflang $FCFLAGS -c $f90
done

amdflang $FCFLAGS -o ./main_acdrag.x main_acdrag.o yomhook.o
