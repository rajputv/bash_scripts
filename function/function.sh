#!/bin/bash
noarg(){
	echo this script requires a argument which is filename
	echo please provide the filename when running the script
	exit 2
}
if [ -z $1 ]; then
	noarg
else
	file $1
fi

exit 0
	
