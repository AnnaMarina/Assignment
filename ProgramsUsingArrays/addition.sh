#!/bin/bash

#Program to show sum of 3 integers add to zero

        sum=0;
        echo " Enter the three integers"
        declare -a integer
        for ((i=1; i<=3; i++))
        do
                read a
                integer[$i]=$a
        done

        echo " The entered array  containing numbers is ${integer[@]}";

        for (( i=1; i<=3; i++))
        do
                temp="${integer[$i]}"
                sum=$(($sum+$temp))
        done

        echo " Sum of the entered Integers " $sum

