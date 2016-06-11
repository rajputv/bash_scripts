#!/bin/bash
echo 'choose a directory: '
select dir in /bin /usr /etc
do 
	if [ -n "$dir" ]; then
		DIR=$dir
		echo you have selected $DIR
		#export $DIR
		break
	else
		echo Invalid Option
	fi
done

