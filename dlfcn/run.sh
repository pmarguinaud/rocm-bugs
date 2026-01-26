#!/bin/bash

set -x

amdclang -fopenmp -c main.c

amdclang -fopenmp -c --offload-arch=gfx942 main.c
