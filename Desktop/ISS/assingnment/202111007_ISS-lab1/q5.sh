#!/bin/bash


#a part 
read str
echo
echo "part a :"
echo $str | rev 

#b part
echo
echo "part b :"
strr=`echo $str | rev`

echo "$strr" | tr "a-zA-Z" "b-zA-Za" 

#c part

n=${#str}

#echo $n 

for (( i=(n-1)/2;i>=0;i-- ))
do
    c=${str:i:1}
    rev="$rev$c"
done

for (( i=n/2;i<n;i++ ))
do
    c=${str:i:1}
    rev="$rev$c"
done

echo
echo "part c :"

echo $rev