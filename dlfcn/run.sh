#!/bin/bash

set -x
set -e

amdclang -fopenmp -c main.c

amdclang -fopenmp -c --offload-arch=gfx942 main.c
