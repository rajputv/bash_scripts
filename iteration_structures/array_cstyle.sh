# this script is an example of using cstyle array in bash
#!/bin/bash
#create an array of cars
cars=("Ford" "BMW" "Audi" "Porsche" "Bentley" "Merc")
len=${#cars[*]} # will print the length of the array
#echo $len
#Iterating through the array using c style
for ((i=0; i<$len; i++))
do
	echo Model of the car: ${cars[$i]}
done

