
#!/bin/bash
file=$1
if [ -e $file ]                         #Checking if given file exists
then
dt=$(date +"%Y-%m-%d")                 #Taking present date into a variable using command line substitution
cp $file "$dt"_"$file"                 #copying the contents of input file into a new file
echo $dt_$1

#If the input file doesnot exist
else
echo "file doesnot exist created a file and  dated copy"


#Creating a new empty file and creating a new dated copy file
dt=$(date +"%Y-%m-%d")
touch "$file"
cp $file "$dt"_"$file"
fi
