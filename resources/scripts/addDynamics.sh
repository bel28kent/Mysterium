#!/bin/bash

for i in *.krn
do
  pfDynam $i > dynam_$i
done
