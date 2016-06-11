#!/bin/bash
array=(one two three four [5]=five)
echo "Array Size: ${#array[*]}"

echo Array Items:
for item in ${array[*]}; do
	printf "	%s\n" $item
done

echo Array Indexes:
for index in ${!array[*]}; do
	printf "	%d\n" $index
done

echo Array items and Indexes:
for index in ${!array[*]}; do
	printf "%4d: %s \n" $index ${array[$index]}
done

