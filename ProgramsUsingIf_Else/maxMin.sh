#!/bin/bash -x

#Program that reads 5 Random 3 Digit values and print the minimum and maximum value.

        for (( i=0; i<5; i++ ))
                do
                number[((i))]=$((RANDOM%900+100))
                done
        echo ${number[@]};
        max=${number[0]};
        min=${number[0]};
        for (( i=0; i<5; i++ ))
                do
                if [ ${number[i]} -gt $max ]; then
                         max=${number[i]}
                fi
                if [ ${number[i]} -lt $min ]; then
                         min=${number[i]}
                fi
                done

        echo " The maximum value is " $max;
        echo " The minimum value is " $min;
