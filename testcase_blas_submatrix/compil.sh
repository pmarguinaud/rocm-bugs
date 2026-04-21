#!/bin/bash

source /home/afar/modules/use.sh
module load rocm
module load afar/23.2.0.gfx94X


export COMPROOT="/home/afar/software/compilers/afar/therock-afar-23.2.0-gfx94X-7.13.0-663ad81964a"

set -x

flang -g -fopenmp -fconvert=big-endian -fPIC -I${COMPROOT}/include/rocblas/ -I${COMPROOT}/lib -I${COMPROOT}/lib/llvm/include/flang/iso_c_binding.mod -I${COMPROOT}/lib/llvm/include/hipfort/amdgcn/  -L${COMPROOT}/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_gemm.x test_gemm.F90 -lrocblas -L${COMPROOT}/lib -lamdhip64 -lhipfort-amdgcn 

flang -g -fopenmp -fconvert=big-endian -fPIC -I${COMPROOT}/include/rocblas/ -I${COMPROOT}/lib -I${COMPROOT}/lib/llvm/include/flang/iso_c_binding.mod -I${COMPROOT}/lib/llvm/include/hipfort/amdgcn/  -L${COMPROOT}/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_geam.x test_geam.F90 -lrocblas -L${COMPROOT}/lib -lamdhip64 -lhipfort-amdgcn -DFULL_MATRIX 

flang -g -fopenmp -fconvert=big-endian -fPIC -I${COMPROOT}/include/rocblas/ -I${COMPROOT}/lib -I${COMPROOT}/lib/llvm/include/flang/iso_c_binding.mod -I${COMPROOT}/lib/llvm/include/hipfort/amdgcn/  -L${COMPROOT}/lib/ --offload-arch=gfx942 -O2 -Qunused-arguments -o test_geam_partiel.x test_geam.F90 -lrocblas -L${COMPROOT}/lib -lamdhip64 -lhipfort-amdgcn 
