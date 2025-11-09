#!/bin/bash

. ./config_env.sh

export OFFLOAD_TRACK_NUM_KERNEL_LAUNCH_TRACES=8
export OFFLOAD_TRACK_ALLOCATION_TRACES=true

for i in 0 1 2 
do

echo "==> compile & run with -O$i <=="

mkdir -p $i
cd $i


FC="amdflang -Qunused-arguments -march=native -ffree-form -cpp -fbackslash -fconvert=big-endian -O$i -ffp-contract=off -Werror -fPIC -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice"

$FC -c ../fxtran_acdc_stack_mod.F90
$FC -c ../main_acdrag.F90
$FC -c ../acdrag_manyblocks.F90
$FC -o ./main_acdrag.x ./main_acdrag.o ./acdrag_manyblocks.o ./fxtran_acdc_stack_mod.o

./main_acdrag.x

cd ..

done

