#!/bin/bash

set -x
set -e

echo "without TAB2 PRESENT :"

amdflang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g 

./testpresent.x

echo "with TAB2 PRESENT :"

amdflang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g -DPRESENT_TAB2 

./testpresent.x

