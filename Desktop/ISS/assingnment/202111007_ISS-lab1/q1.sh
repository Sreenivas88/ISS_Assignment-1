#!/bin/bash

#x=$(`sed -i '/^$/d' quotes.txt`)


#grep . quotes.txt
echo "PART A"
grep -Ev "^$" quotes.txt   
echo
echo "PART B"
grep -Ev "^$" quotes.txt   > out.txt



awk -F, '!seen[$NF]++' out.txt 



