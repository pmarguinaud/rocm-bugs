#!/bin/bash
set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdclang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -O1 -g -c mysort.c
amdclang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -O1 -g -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice mysort.o -o mysort 
