#!/bin/bash

#Generate 10 random 3 digit numbers and store them in an array
#Sort the array and then find the 2nd greatest and smallest number

        declare -a num
        for ((i=1; i<=10; i++))
        do
                num[$i]=$((RANDOM%900+100))
        done
        echo " The array is : " ${num[@]};

        #Sorting the array in Descending form
        for (( i=1; i<=10; i++))
        do
                for (( j=$(($i+1)); j<=10; j++))
                do
                        num1=`printf "${num[$i]}"`
                        num2=`printf "${num[$j]}"`
                        if [ $num2 -gt $num1 ]; then
                        temp1=$num1
                        temp2=$num2
                        num[(($i))]=$temp2
                        num[(($j))]=$temp1
                        fi
                done
        done

        echo " The new sorted array is : ${num[@]}";
        echo " The 2nd Greatest number is : ${num[2]}";
        echo " The 2nd Smallest number is : ${num[9]}";

