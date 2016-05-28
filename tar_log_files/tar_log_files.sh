# In this script we are going to tar all the log files, including the ones present in the sub directories
#!/bin/bash
LOG_DIR=/home/vivek/bash_scripts/tar_log_files/log
cd $LOG_DIR
for files in $LOG_DIR/*; do
	if [ -d $files ]; then
		cd $files
		for s in $files/*; do
		name=$(basename $s)
		tar -cvzf $name.tar.gz $s
		done
	else		 
		echo $files
		name=$(basename $files)
		echo $name
		tar -cvzf $name.tar.gz $files
	fi
done


