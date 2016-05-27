#This is a script which is used for cleaning the log files
#!/bin/bash
LOG_DIR=/home/vivek/bash_scripts/cleanup_log #this is generally /var/log directory
ROOT_UID=0
LINES=3
E_XCD=86 #cant change directory
E_NOTROOT=87 #Not a root user

#Run as root
if [ "$UID" != "$ROOT_UID" ]; then
	echo "You need to be root to execute this script"
	exit $E_NOTROOT
fi

#To check did user specify the number of lines to be copied before clean up
if [ -n "$1" ]; then
	lines=$1
else
	lines=$LINES #default lines specified
fi

cd $LOG_DIR
echo $LOG_DIR
if [ `pwd` != $LOG_DIR ]; then
	echo "cant change to $LOG_DIR"
	exit $E_XCD
fi

tail -n $lines log > new_log
#I am not removing the new_log.txt to demonstrate the old and new log.txt files
#mv new_log.txt log.txt
echo "log file is cleared"
