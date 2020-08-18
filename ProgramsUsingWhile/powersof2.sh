#!/bin/bash

#Printing a table of powers of 2 till 256 is reached.

        power=2;  #To calculate power of 2
        echo" The table is";
        while [ $power -le 256 ]
        do
                echo "$power ";
                power=$(($power*2));
        done
