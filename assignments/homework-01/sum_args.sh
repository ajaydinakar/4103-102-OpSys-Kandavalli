
#! /bin/bash
 sum=0    
for i in $*
do 
 sum=`expr $sum + $i`
done
for i in ${@:1:$#-1}
do 
 echo -n $i"+"
done
echo -n ${@: -1}"="
echo $sum


