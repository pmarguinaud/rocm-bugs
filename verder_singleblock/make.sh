#!/bin/bash

amdflang -fPIC -fconvert=big-endian -Qunused-arguments -fopenmp -Wl,-z,execstack --offload-arch=gfx942 -lflang_rt.hostdevice -lm -O1 -g -c verder_singleblock.F90

