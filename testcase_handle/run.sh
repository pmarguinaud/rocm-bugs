#!/bin/bash

. ../prolog.sh

set -x
set -e

. ../prolog.sh

make clean

GFX="gfx90a" make -j8
srun -p MI210 ./main_spnhsi.x 

make clean

GFX="gfx942" make -j8
srun -p MI300A ./main_spnhsi.x 
