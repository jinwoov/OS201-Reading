#!/bin/bash

counter=1
let "counter++"

echo $counter

# $0 it will show what the name of the file is going to be

name=$0

echo $name


for i in {1..2}
do
cp file.txt file$i.txt
done