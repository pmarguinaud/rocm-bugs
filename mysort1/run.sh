#!/bin/bash

set -x
set -e

amdclang mysort.c 

\ls -l a.out

amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice mysort.c -lm

\ls -l a.out

