#!/bin/bash 


function second_largest(){
   random_array=("$@")
   max1=0
   max2=0
   for ((i=0; i<10; i++))
   do
      number="${random_array[i]}"
      if [ $i -eq 0 ]
      then
         max1=$number
         max2=$number
      elif [ $number -gt $max1 ] && [ $max1 -ge $max2 ]
      then
         max2=$max1
         max1=$number
      fi
   done
   echo $max2" is 2nd largest"
}
function second_smallest()
{   
   random_array=("$@")
   min1=0
   min2=0
   for ((i=0; i<10; i++))
   do
done      
