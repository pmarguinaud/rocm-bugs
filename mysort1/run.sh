#!/bin/bash

. ../prolog.sh

set -x
set -e

amdclang mysort.c 

\ls -l a.out

amdclang -Qunused-arguments -fopenmp --offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE mysort.c -lm

\ls -l a.out

