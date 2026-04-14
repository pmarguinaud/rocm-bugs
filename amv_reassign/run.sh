#!/bin/bash

set -x
set -e

amdflang -c -fconvert=big-endian -fPIC -fopenmp -ffree-form -O1 -g amv_reassign.F90
