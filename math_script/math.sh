#!/bin/bash
NUMBER=0
NUMBER1=0
NUMBER2=0
ANSWER=0
CORRECT_ANSWER=0
CORRECT=0
MAX_TRIES=3

function generate_question(){
	generate_numbers
	determine_operation
	QUESTION="$NUMBER1 $OPERATION $NUMBER2"
}

function generate_numbers(){
	generate_number
	NUMBER1=$NUMBER
	generate_number
	NUMBER2=$NUMBER
}

function generate_number(){
	NUMBER=$((RANDOM%10+1))
}

function determine_operation(){
	RAND=$((RANDOM%3))
	case $RAND in
	1) OPERATION='*';;
	2) OPERATION='+';;
	3) OPERATION='-';;
	esac
}

function calculate_answer(){
	CORRECT_ANSWER="$(echo "$QUESTION" | bc)"
}

function check_answer(){
	if [ $ANSWER -eq $CORRECT_ANSWER 2>/dev/null ]; then
		echo "CORRECT! ANSWER"
		CORRECT=1
	else
		if [ $TRY -eq $MAX_TRIES ]; then
			echo "The correct answer is $CORRECT_ANSWER"
			echo "Lets try the next one"
			break
		else
			TRY=$(($TRY +1))
			echo "Oops!! Sorry Wrong answer please try again"
		fi
	fi
}

function init_log(){
	echo "----- Log for $(date +%d-%m-%Y' '%H:%M)" >> log
}

while true
do
	CORRECT=0
	TRY=1
	generate_question
	calculate_answer
	echo "the question is $QUESTION"
	while [ $CORRECT -ne 1 ]; do
		read ANSWER
		check_answer
	done
done 
