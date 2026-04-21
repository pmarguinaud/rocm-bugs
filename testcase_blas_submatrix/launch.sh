#!/bin/bash

#export HIP_VISIBLE_DEVICES=1

./test_gemm.x 
./test_geam.x
./test_geam_partiel.x
#rocprofv3 --runtime-trace --stats -S -T --pmc OccupancyPercent  --output-format=pftrace -o testgemm -- ./test_gemm.x
