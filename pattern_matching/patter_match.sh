#!/bin/bash
BLAH=rababarabarabarara
clear
echo BLAH is $BLAH
#In the below line # means start from left and move towards right and ## means until the last match (*ba means something in front of it)
echo 'the result of ##*ba is' ${BLAH##*ba}
#In the below line # means start from left and move towards right and # means beginning of first match
echo 'the result of #*ba is' ${BLAH#*ba}
#In the below line % means start from right and move towards left and %% means beginning of last match
echo 'the result of %%ba* is' ${BLAH%%ba*}
#In the below line % means start from right and move towards left and % means beginning of first match
echo 'the result of %ba* is' ${BLAH%ba*}
