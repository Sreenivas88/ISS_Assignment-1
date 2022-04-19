#!/bin/bash

x= wc -c < $1

i=$(echo `wc -l < $1`) 
echo $(( i+1 ))

wc -w < $1 


i=0
while read line ; 
do
    i=$(( i+1 ))
    x=( `echo "$line" | wc -w`)
    
echo "Line No: $i - Count of words: $x"
done < $1

sed -e  's/[^A-Za-z]/ /g' $1 | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '$^'| sort | uniq -c | sort -rn > out.txt
#sort -u -d # remove duplicate lines

awk '{ if ($1 > 1) print  $2 "-" $1 }' out.txt
rm out.txt 

