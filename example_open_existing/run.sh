#!/bin/bash

set -x
set -e

amdflang -fopenmp --offload-arch=gfx942 -c example_open_existing.F90 
amdflang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g example_open_existing.o -o example_open_existing 
