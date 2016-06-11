#!/bin/bash
# first argument is the number of files
# second argument is the directory where to create the files

dd if=/dev/zero of=/inputfile bs=1024 count=10

cd $2

for (( counter=1; counter<=$1; counter++ )); do
	cp /inputfile $counter.blah
done
