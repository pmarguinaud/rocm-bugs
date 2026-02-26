#!/bin/bash

source /home/afar/modules/use.sh

echo "compile and run with 22.2"
module purge
module load rocm
module load afar/22.2.0

flang -march=native -g -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp --offload-arch=gfx942 -Qunused-arguments -o main_spnhsi.x yomvert.F90 type_geometry.F90 geometry_mod.F90 util_tveta_mod.F90 util_tvertical_geom_mod.F90 util_geometry_mod.F90 main_spnhsi.F90 

./main_spnhsi.x

rm *.mod *.x

echo "compile and run with 22.3"
module purge
module load rocm
module load afar/22.3.0

flang -march=native -g -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp --offload-arch=gfx942 -Qunused-arguments -o main_spnhsi.x yomvert.F90 type_geometry.F90 geometry_mod.F90 util_tveta_mod.F90 util_tvertical_geom_mod.F90 util_geometry_mod.F90 main_spnhsi.F90 

./main_spnhsi.x

rm *.mod *.x

