


#!/bin/bash
file=$1
if [ -e $file ]                         #Checking if given file exists
then
now=$(date +"%Y-%m-%d")                 #Taking present date into a variable using command line substitution
cp $file "$now"_"$file"                 #copying the contents of input file into a new file
# !/bin/bash
a=$1
echo $DATE_$1

#If the input file doesnot exist
else
echo "file doesnot exist created a new file and dated copy"

#Creating a new empty file and creating a new dated copy file
touch $file
now=$(date +"%Y-%m-%d")
cp $file "$now"_"$file"
fi
