#!/bin/bash -x


read -p "Enter a number:" n
echo "The prime factors of $n are"
num=0
for(( i = 2; i * i <= n; ))
do
    if(( n % i == 0))
    then
        array[num++]=$i
        (( n =n/i ))
    else
        (( p=p+1 ))
    fi
done

array[num]=$n
echo "${array[@]}"
