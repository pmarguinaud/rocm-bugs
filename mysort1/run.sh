#!/bin/bash
set -x

export PATH=/ec/res4/hpcperm/sor/install/rocm/8873/bin:$PATH

amdclang mysort.c 

\ls -l a.out

amdclang -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice mysort.c -lm

\ls -l a.out

