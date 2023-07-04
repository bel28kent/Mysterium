#!/bin/bash

for i in */*.krn
do
  sed -i '' 's/!!!system.*/!!!system-decoration: {(*)}/' $i
done
