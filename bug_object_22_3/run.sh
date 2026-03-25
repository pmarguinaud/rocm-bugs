#!/bin/bash

set -x
set -x

\rm -f *.mod *.x

amdflang -march=native -g -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp --offload-arch=gfx942 -Qunused-arguments -o main_spnhsi.x yomvert.F90 type_geometry.F90 geometry_mod.F90 util_tveta_mod.F90 util_tvertical_geom_mod.F90 util_geometry_mod.F90 main_spnhsi.F90 

srun -p MI300X ./main_spnhsi.x


