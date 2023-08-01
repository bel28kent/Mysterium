#!/bin/bash

mkdir swappedSpines

for i in op*
do
  cd $i
  for j in *.krn
  do
    printByStaff $j | swapSpines | printByRecord > swapped_$j
  done
  cd ..
done

mv op*/swapped_* swappedSpines
