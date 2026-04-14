#!/bin/bash

. ../prolog.sh

set -x
set -e

amdflang -Qunused-arguments -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -c mysort.F90
amdflang -Qunused-arguments -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE $LFLANG_RT_HOSTDEVICE mysort.o -o mysort 
