#!/bin/bash
set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdflang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -c mysort.F90
amdflang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice mysort.o -o mysort 
