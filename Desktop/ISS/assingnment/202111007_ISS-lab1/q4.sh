#!/bin/bash

arr=(`echo $(echo ${@}) | tr ',' ' '`)
#echo ${arr[0]}

n=${#arr[@]}

#echo "size : $n"

for (( i=0 ; i<n ; i++ )) 
do
	min=$i
	#echo "min : $min"

	for (( j=i+1 ; j<n ; j++ )) 
	do
		#echo "x : ${arr[i]} y : ${arr[j]}"
		if  [[ ${arr[min]} -gt ${arr[j]} ]]
		then
			min=$j
		fi
	done
	#echo "min element : ${arr[min]}"
	#if [[ ${arr[min]} -lt ${arr[i]} ]] 
	if (( "${arr[min]:-0}"<"${arr[i]:-0}" ))
	
	then
		#echo swap
		#echo "x : ${arr[i]} y : ${arr[min]}"
		t=${arr[i]}
		arr[i]=${arr[min]}
		arr[min]=$t
		#echo "x : ${arr[i]} y : ${arr[min]}"
	fi
	#echo 
	#echo "                               ${arr[@]}"
done
echo ${arr[@]}
