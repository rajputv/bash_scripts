#Write a script with servicemon. This script should monitor the availability of a service, of which the name has to be specified as the boot argument for the script. The script would run indefinitely and if the service that it monitors stops, it should do three things
#1. Restart the service 
#2. Write a message to syslog
#3. Send an email message to the root user

#!/bin/bash
#make sure that the user has provided the service name as argument
if [ -z "$1" ]; then
	echo "argument is missing as part of running the script"
	echo "please provide the service name which needs to be monitored"
	exit 2
else
	SERVICE=$1	
fi

# verify that $SERVICE is running
if ps aux | grep $SERVICE | grep -v grep | grep -v servicemon
then
	echo all good
else
	echo $SERVICE could not be found as a process
	echo Make sure $SERVICE is either started or installed
	exit 3
fi

#monitor $SERVICE
while ps aux | grep $SERVICE | grep -v grep | grep -v servicemon
do 
	sleep 10
done

#actions if service is failing
service $SERVICE start
#logger servicemon: $SERVICE restarted
#mail -s "servicemon $SERVICE restarted at $(date +%d-%m-%Y' '%H:%M) root < ." 
