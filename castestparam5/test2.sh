#!/bin/bash

rm verder_singleblock.F90
make clean
cp verder_singleblock.F90_v2 verder_singleblock.F90
make
