#!/bin/bash 

#Finding the magic number in between 1 to 100

        check=0
        echo " Please think of a number between 1 to 100"
        low=0;                  #Low and High values are the limits
        high=100;

        while [ $check != 3 ]
        do
                num=$((($high+$low)/2))
                printf " -------------------------- \n";
                printf "Enter 1 if the number is greater than $num \n Enter 2 if the number is less than $num \n Enter 3 If the answer is correct \n";
                printf " --------------------------  \n";
                read -p " Please enter the desired option " check

                case $check in
                        1)
                        low=$num;
                        ;;

                        2)
                        high=$num;
                        ;;

                        3)
                        echo " The number is "  $num
                        ;;

                        *)
                        echo "Please enter valid option";
                        ;;

                esac
        done

