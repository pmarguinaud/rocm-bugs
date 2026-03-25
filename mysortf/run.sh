#!/bin/bash

set -x
set -e

amdflang -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -c mysort.F90
amdflang -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -lflang_rt.hostdevice mysort.o -o mysort 
