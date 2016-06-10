#!/bin/bash
echo "Hello $1, how are you today"
echo "\$* gives $*" # this gives the number of arguments
echo "\$# gives $#" # this is used as counter for the arguments
echo "\$@ gives $@" # this is also used for number of arguments
echo "\$0 is $0"

#trying to process the argument
# with $* we dont have much control over the arguments and it prints the complete list at a time
echo
echo show the interpretation of \$*
for i in "$*"
do
	echo $i
done
echo
# in $@ you will have control over the arguments
echo show the interpretation of \$@
for i in "$@"
do
	echo $i
done

exit 0

