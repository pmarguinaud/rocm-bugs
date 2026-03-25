#!/bin/bash

. ../prolog.sh

set -x
set -e

amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -c mysort.c
amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE mysort.o -o mysort 
