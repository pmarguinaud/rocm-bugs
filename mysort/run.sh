#!/bin/bash

set -x
set -e

amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -c mysort.c
amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice mysort.o -o mysort 
