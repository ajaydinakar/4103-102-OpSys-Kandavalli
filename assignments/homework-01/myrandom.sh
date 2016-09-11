

#!/bin/bash
FILE=/usr/share/dict/words     #Assigning the complete path of the file "words" to variable "FILE"
if [ -e $FILE ]                #Checking if the given file exists
then
wordnum=$(cat $FILE | wc -l)       #Counting number of lines present in the file and displaying
#Selecting a randoom number brtween  1 to number of lines
DIV=$((wordnum+1))
R=$(($RANDOM%$DIV))

#Extracting the word present in that line and displaying it
T=$(head -$R $FILE | tail -1)
echo "RANDOM WORD:  "$T
else 
echo "file doesnot exist"
fi
