#!/bin/bash
file=/usr/share/dict/words     #Assigning the complete path of the file "words" to variable "FILE"
if [ -e $file ]                #Checking if the given file exists
then
wordnum=$(cat $file | wc -l)       #Counting number of lines present in the file and displaying
#Selecting a random number between  1 to number of lines
range=$((wordnum+1))
rand=$(($RANDOM%$range))
#Extracting the word present in that line and assigning it to word and displaying it
word=$(head -$rand $file | tail -1)
echo "RANDOM WORD:  "$word
else 
echo "file doesnot exist"
fi
