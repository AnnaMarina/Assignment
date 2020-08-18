#!/bin/bash


#Program that prints factorial


        read -p " Enter the number to print the factorial " num;
        factorial=1;
        echo " The factorial is "
        for ((i=1; i<=num; i++))
        do
                factorial=$(($factorial*$i));
        done
        echo $factorial;


#Program that computes factors of a number by prime factorization method


        read -p " Enter the number  whose prime factors are to be found " num

        echo " The prime factors are ";
        #To check if it is divisible by 2

        until [ ! $(($num%2)) -eq 0 ]
        do
                echo 2
                num=$(($num/2));

        done

        #To check for numbers from 3
        n=$(($num*$num))
        for ((i=3; i<=$n; i++))
        do
                until [ ! $(($num%$i)) -eq 0 ]
                do
                        echo $i;
                        num=$(($num/$i))
                done
        done


