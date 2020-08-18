#!/bin/bash


#Printing a table of powers of 2 .

       power=2;  #To calculate power of 2
       read -p "Enter the limit " n
               for ((i=1; i<=n; i++ ))
                do
                        echo "$power ";
                        power=$(($power*2));
                done
