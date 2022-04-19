#!/bin/bash

grep -Ev "^$" quotes.txt   > out.txt

$(awk -F " ~" ' {print $2 " once said,\"" $1 "<>" } ' out.txt > "temp.txt")


awk -F ".<>" ' {print $1 "\"" "."  } ' temp.txt > "speech.txt"
rm temp.txt out.txt


