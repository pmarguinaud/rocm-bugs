#/bin/bash

\rm actke_openacc.F90
make clean
cp actke_openacc.F90_v2 actke_openacc.F90
make

