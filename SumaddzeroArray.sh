#! /bin/bash/ -x

sum=0

read -p "enter the number of elements in the array" n

echo "enter the elements of array"


array1=()
for(( i=0; i<$n; i++ ))
do
	read -p "enter the elements" x
        array1[$i]=$x
	echo ${array[i]}
done

for (( i=0; i<$n; i++ ))
do
	for (( j=$((i+1)); j<$n; j++ ))
	do
		for(( k=$((j+1)); k<$n; k++ ))
		do
			a=${array[i]}
			b=${array[j]}
			c=${array[k]}
			sum=`echo "$a+$b+$c" | awk '{{s+=$0}END{printf("%.2f\n", s)} }'`
                        if [ $sum -eq 0 ]
			then
				echo "The sum of "${array[$i]}" ," ${array[$j]}" ,"${array[$k]} " is zero"
			else
				echo "No elements sum up to zero"
			fi
		done
	done
done
