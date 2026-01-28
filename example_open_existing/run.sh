#!/bin/bash

set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdflang -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -O1 -fPIE -c example_open_existing.F90 
amdflang -Wl,--export-dynamic -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -O1 -g example_open_existing.o -o example_open_existing 
