#!/bin/bash

set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdflang -fPIC -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -fPIE -c example_open_existing.F90 
amdflang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -fPIC -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g example_open_existing.o -o example_open_existing 
