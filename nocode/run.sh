#!/bin/bash

set -x

amdflang -I. -S -fconvert=big-endian -fPIC -fopenmp -ffree-form -O1 toto.F90
amdflang -I. -c -fconvert=big-endian -fPIC -fopenmp -ffree-form -O1 toto.F90

nn=$(cat toto.s | wc -l)

if [ "$nn" -le 15 ]
then
  cat toto.s
  exit 1
fi

