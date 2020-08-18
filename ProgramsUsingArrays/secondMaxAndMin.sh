#!/bin/bash


#Generate 10 random 3 digit numbers and store them in an array
#Find the 2nd largest and smallest number

        maximum() {

        greatest=`printf "${num[1]}"`;
        secondGreatest=`printf "${num[2]}"`;

        if [ $secondGreatest -gt $greatest ]; then
                greatest=`printf "${num[2]}"`;
                secondGreatest=`printf "${num[1]}"`;
        fi

        for ((i=3; i<=10; i++))
        do
        temp=`printf "${num[$i]}"`;
                if [ $temp -gt $greatest ]; then
                        secondGreatest=$greatest;
                        greatest=$temp;
                elif [ $temp -gt $secondGreatest ]; then
                        secondGreatest=$temp;
                fi
        done
        echo " The greatest number is $greatest & the second greatest is $secondGreatest"
        }

        minimum() {

        smallest=`printf "${num[1]}"`;
        secondSmallest=`printf "${num[2]}"`;

        if [ $secondSmallest -lt $smallest ]; then
                smallest=`printf "${num[2]}"`;
                secondSmallest=`printf "${num[1]}"`;
        fi

        for ((i=3; i<=10; i++))
        do
        temp=`printf "${num[$i]}"`;
                if [ $temp -lt $smallest ]; then
                        secondSmallest=$smallest;
                        smallest=$temp;
                elif [ $temp -lt $secondSmallest ]; then
                        secondSmallest=$temp;
                fi
        done
        echo " The smallest number is $smallest & the second smallest is $secondSmallest"
        }

        declare -a num
        for ((i=1; i<=10; i++))
        do
                num[$i]=$((RANDOM%900+100))
        done
        echo " The array is : " ${num[@]};
        maximum
        minimum
