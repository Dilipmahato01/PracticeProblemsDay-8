#!/bin/bash -x

read -p "enter first number : " num1
read -p "enter second number : " num2

index=0

if [[ $num1 -gt 0 &&  $num2 -le 100 ]]
then
   for (( i=num1 ; i<=num2 ; i++ ))
   do
       if  (( i%11 == 0 ))
       then
             twice[index++]=$i

       fi
done
   echo "${twice[@]}"

fi
