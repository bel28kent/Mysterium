#!/bin/bash

for i in op*
do
  cd $i
  for j in *.krn
  do
    autostem -r $j > no_stems-$j
  done
  cd ..
done
