#!/bin/bash

for i in op*
do
  cd $i
  for j in *.krn
  do
    mv ../swappedSpines/swapped_$j $j
  done
  cd ..
done
