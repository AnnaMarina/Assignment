#!/bin/bash

#Program that takes day & month and prints true if day of month is between March 20 and June 20, false otherwise.

        read -p "Enter the desired month " month ;
        read -p "Enter  the desired date " day ;

        if [ "$month" == "march" -o "$month" == "March" ]; then
                if [ $day -ge 20 -a $day -le 31 ]; then
                        echo " Inside the limit";
                else
                        echo "Not in the limit";
                fi
        elif [ "$month" == "april" -o "$month" == "April" ]; then
                if [ $day -ge 1 -a $day -le 30 ]; then
                        echo " Inside the limit";
                else
                        echo "Not in the limit";
                fi
        elif [ "$month" == "may" -o "$month" == "May" ]; then
                if [ $day -ge 1 -a $day -le 30 ]; then
                        echo "Inside the limit";
                else
                        echo "Not in the limit";
                fi

        elif [ "$month" == "june" -o "$month" == "June" ]; then
                if [ $day -ge 1 -a $day -le 20 ]; then
                        echo " Inside the limit";
                else
                        echo "Not in the limit";
                fi
        else
                echo " Not in the limit";
        fi

