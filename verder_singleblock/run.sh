#!/bin/bash

. ../prolog.sh

set -x
set -e

amdflang -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE -lm -O1 -g -c verder_singleblock.F90

