#!/bin/bash

set -x

\rm run.csv

for d in *
do

  if [ ! -d "$d" ]
  then
    continue
  fi

  if [ ! -f "$d/run.sh" ]
  then
    continue
  fi

  cd "$d"

  ./run.sh > run.eo 2>&1
  c=$?

  cd ..

  echo "$d;$c;" >> run.csv

done
