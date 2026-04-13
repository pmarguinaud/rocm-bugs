#!/bin/bash

source /home/afar/modules/use.sh
module load rocm
module load afar/22.3.0
export FC=flang
export F90=flang
export CC=clang
export CXX=clang++
module load openmpi/afar-22.3.0/5.0.9
module load cmake/3.31.7


cat > main.F90 << EOF
PROGRAM MAIN
END
EOF

set -x

flang -o main.x main.F90

mpiexec -n 2 ./main.x


