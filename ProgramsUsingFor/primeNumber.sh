#!/bin/bash

#Determination of a prime number

        read -p "Enter the number :" number

        for((i=2; i<=number/2; i++))
        do
                if [ $((number%i)) -eq 0 ]
                        then
                        echo "$num is not a prime number."
                        f=1;
                        break;
                fi
        done
        if [ $f -eq 0 ]; then
                echo "$num is a prime number."
        fi

#Prints the prime numbers fram a range.

        read -p "Enter the minimum limit :" min
        read -p "Enter the maximum limit :" max
        echo "The Prime numbers are : "
        for(( i=min; i<=max; i++))
        do
                f=0;
                for((j=2; j<=i/2; j++))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                #echo " $i is not a Prime number";
                                f=1;
                                break
                        fi
                done
                if [ $f -eq 0 ]
                then
                        echo " $i "
                fi
        done

