#!/bin/bash
echo how are you ?
read str
str=`echo $str | tr a-z A-Z`
[ -z $str ] && exit 1

case $str in
	GOOD)
	echo nice!
	;;
	BAD)
	echo bad for you!!
	;;
	*)
	echo I do not understand your answer
esac 
