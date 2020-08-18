#!/bin/bash

#Program that reads 5 Random two digit values and then find the sum and average

        for (( i=0; i<5; i++ ))
        do
                number[((i))]=$((RANDOM%90+10))
        done
        sum=0

        for n in ${number[@]}
        do
                sum=`expr $sum + $n`
        done
        echo " The sum is " $sum "and the average is " $(($sum/5))
