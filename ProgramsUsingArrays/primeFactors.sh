#!/bin/bash

#Store all the prime factors of number n into a array and finally display the output


        read -p " Enter the number  whose prime factors are to be found " num

        j=1;
        declare -a factors
        echo " The prime factors are ";
        #To check if it is divisible by 2

        until [ ! $(($num%2)) -eq 0 ]
        do
                factors[(($j))]=2;
                j=$(($j+1))
                num=$(($num/2));

        done

        #To check for numbers from 3
        n=$(($num*$num))
        for ((i=3; i<=$n; i++))
        do
                until [ ! $(($num%$i)) -eq 0 ]
                do
                        factors[(($j))]=$i;
                        j=$(($j+1))
                        num=$(($num/$i))
                done
        done

        #Printing the prime factors from the array
        echo " ${factors[@]}" ;

