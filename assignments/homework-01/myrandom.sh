

#!/bin/bash
FILE=/usr/share/dict/words     #Assigning the complete path of the file "words" to variable "FILE"
if [ -e $FILE ]                #Checking if the given file exists
then
NUM=$(cat $FILE | wc -l)       #Counting number of lines present in the file and displaying
echo "Total number of lines in the file:  "$NUM

#Selecting a randoom number brtween  1 to number of lines
DIV=$((NUM+1))
R=$(($RANDOM%$DIV))
echo "Now printing the word present at line number: "$R

#Extracting the word present in that line and displaying it
T=$(head -$R $FILE | tail -1)
echo "The word is:  "$T
else 
echo "file doesnot exist"
fi
