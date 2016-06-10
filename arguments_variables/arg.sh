#!/bin/bash
#this if is checking is argument is provided, if not it is asking the user to provide it
#-z $1 is to check whether an argument is provided
#another way of testing is if test -z $1 but for readability if [ -z $1 ] --> is always better
#if test -z $1; then
if [ -z $1 ]; then
	echo please provide an argument
	read ARG
else
	ARG=$1
fi
echo your argument is $ARG
