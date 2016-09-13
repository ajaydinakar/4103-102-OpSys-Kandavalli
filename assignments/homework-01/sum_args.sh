
#! /bin/bash
 sum=0    
for i in $*
do 
 sum=`expr $sum + $i`
done
for i in $*
do 
 echo -n $i"+"
done
echo -n "="
echo $sum


