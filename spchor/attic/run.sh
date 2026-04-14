#!/bin/bash
set -x

exec /ec/res4/hpcperm/sor/install/rocm/8873/bin/amdflang \
  -I include \
  -fPIC -Qunused-arguments -fopenmp \
  --offload-arch=gfx942 \
  -O1 -g -c spchor_strhd2acc.F90 


