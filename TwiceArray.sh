#!/bin/bash  

arr=()
counter=0
for ((i=0; i<100; i++))
do
   temp_number=$i
   first_number=$((RANDOM%200+100))
   second_number=$((RANDOM%200+200))
   if [ ! $temp_number -eq 0 ]
   then
      first_number=$((temp_number%10))
      temp_number=`expr "$temp_number/10"`
      second_number=$((temp_number%10))
   fi

   if [ $first_number -eq $second_number ]
   then
      arr[((counter++))]=$i

   fi
done
echo "${arr[@]}"
