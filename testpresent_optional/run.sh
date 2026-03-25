#!/bin/bash

. ../prolog.sh

set -x
set -e

echo "without TAB2 PRESENT :"

amdflang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -g 

srun -p MI300X ./testpresent.x

echo "with TAB2 PRESENT :"

amdflang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -g -DPRESENT_TAB2 

srun -p MI300X ./testpresent.x

