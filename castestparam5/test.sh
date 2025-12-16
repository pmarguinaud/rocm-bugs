#!/bin/bash

. ./config_env.sh

./test1.sh > test1.eo 2>&1
./test2.sh > test2.eo 2>&1
