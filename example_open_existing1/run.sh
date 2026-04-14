#!/bin/bash

. ../prolog.sh

set -x

FC="amdflang -Qunused-arguments -fopenmp"

for opt in "" "--offload-arch=gfx942 $LFLANG_RT_HOSTDEVICE"
do

\rm -f *.o *.mod *.a a.out

$FC $opt -c yomvirt1.F90 
$FC $opt -c example_open_existing.F90 
\rm -f libodb.a
ar crv libodb.a yomvirt1.o
$FC $opt example_open_existing.o libodb.a libodb.a 

\ls -l a.out

done
