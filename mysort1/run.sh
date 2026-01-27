#!/bin/bash
set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdclang  -DLINUX -DLITTLE  -fopenmp \
  --offload-arch=gfx942 -lflang_rt.hostdevice -O1 -g -fPIE \
  -c mysort.c

amdclang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice \
  -O1 -g -Wl,--export-dynamic -fopenmp --offload-arch=gfx942 \
  mysort.o -o mysort 
