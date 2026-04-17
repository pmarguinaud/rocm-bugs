#!/bin/bash

set -x

amdflang -g -O0 -fopenmp --offload-arch=gfx942 test.F90 -o test.x  
./test.x 
