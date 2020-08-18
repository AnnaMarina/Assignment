#!/bin/bash

#Harmonic Number
#HN=1+1/2+1/3+1/4+....1/N

        echo "Enter the limit for printing the Harmonic Number";
        read n
        rec=0;               #Reciprocal
        hn=0;               #For finding the total
        for (( i=2; i<=$n; i++ ))
        do
                rec=`printf %.2f "$(((100/$i)))e-2"`;
                hn=`awk "BEGIN {print $rec+$hn;exit}"`;
        done

        echo "The Harmonic number of $n is :"
        awk "BEGIN {print $hn+1;exit}";

