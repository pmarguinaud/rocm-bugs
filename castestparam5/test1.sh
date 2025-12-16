#!/bin/bash

rm verder_singleblock.F90
make clean
cp verder_singleblock.F90_v1 verder_singleblock.F90
make
