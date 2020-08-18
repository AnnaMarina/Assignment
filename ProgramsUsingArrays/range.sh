#!/bin/bash

#Take a range from 0-100, find the digits that are repeated twice like 33,77 etc and store them in an array


        declare -a digits
        n=1;                          #for incrementing the digit array

        for ((i=1; i<100; i++))
        do
                if [ $(($i%11)) == 0 ]; then
                digits[$n]=$i;
                n=$(($n+1))
                fi
        done

        echo " The digits which are repeated twice are ${digits[@]}"

