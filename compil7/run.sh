#/bin/bash

set -x
set -e

make clean
timeout 120 make

