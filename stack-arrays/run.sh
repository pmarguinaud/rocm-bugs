#!/bin/bash

amdflang -S  -fstack-arrays toto.F90 
mv toto.s toto.stack-arrays.s 
amdflang -S  -fno-stack-arrays toto.F90 
mv toto.s toto.no-stack-arrays.s 

diff toto.stack-arrays.s toto.no-stack-arrays.s
c=$?

if [ $c -eq 0 ]
then
  exit 1
fi

