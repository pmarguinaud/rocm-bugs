#!/bin/bash

source /home/afar/modules/use.sh
module load rocm
module load afar/22.3.0


set -x

flang -g -fopenmp -fconvert=big-endian -fPIC -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/hipfort/amdgcn/ -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/rocblas/  -L/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_gemm.x test_gemm.F90 -lrocblas -lamdhip64 /home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/libhipfort-amdgcn.a

flang -g -fopenmp -fconvert=big-endian -fPIC -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/hipfort/amdgcn/ -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/rocblas/  -L/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_geam.x test_geam.F90 -lrocblas -lamdhip64 /home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/libhipfort-amdgcn.a -DFULL_MATRIX

flang -g -fopenmp -fconvert=big-endian -fPIC -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/hipfort/amdgcn/ -I/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/include/rocblas/  -L/home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_geam_partiel.x test_geam.F90 -lrocblas -lamdhip64 /home/afar/software/compilers/afar/rocm-afar-10004-drop-22.3.0/lib/libhipfort-amdgcn.a 



