#!/bin/bash

. ../prolog.sh

set -x
set -e

make clean
make
