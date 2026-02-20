#!/bin/bash

source /home/afar/modules/use.sh
module load rocm
module load afar/22.2.0

export GFX="gfx90a"

make

./main_spnhsi.x > output.txt 2>&1

make clean
