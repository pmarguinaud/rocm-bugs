#!/bin/bash

module purge
source /home/afar/modules/use.sh
module load rocm/7.1.0
module load afar/22.2.0

set -x

echo "without TAB2 PRESENT :"

flang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g 

./testpresent.x

echo "with TAB2 PRESENT :"

flang -o testpresent.x routine.F90 testpresent.F90 -O2 -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -g -DPRESENT_TAB2 

./testpresent.x

