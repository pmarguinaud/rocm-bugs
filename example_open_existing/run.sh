#!/bin/bash

. ../prolog.sh

set -x
set -e

amdflang -fopenmp --offload-arch=gfx942 -c example_open_existing.F90 
amdflang -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -g example_open_existing.o -o example_open_existing 
