#!/bin/bash

set -x
set -e

export ROCM_PREFIX=$(which amdflang)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)

make clean

if [ $(hostname) = "electra019" ]
then
  GFX="gfx90a" make -j8
  ./main_spnhsi.x 
fi

if [ $(hostname) = "mi300a" ]
then
  GFX="gfx942" make -j8
  ./main_spnhsi.x 
fi



