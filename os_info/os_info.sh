#!/bin/bash
function write_header(){
local h="$@"
echo "---------------------------------------------------------------"
echo " ${h}"
echo "---------------------------------------------------------------"
}

# Purpose - Get info about your operating system
function os_info(){
write_header " System information "
echo "Operating system : $(uname)"
#echo $"`lsb_release -a`"
echo "$(lsb_release -a)"
}

# Calling the function to print the details
os_info
