#!/bin/bash

amdflang -O1 -fopenmp main.F90 
./a.out 4 3
