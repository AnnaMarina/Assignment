#!/bin/bash


#Write a program that takes a year as input and output the year is a leap year or not.

        Leapyear () {
        if [ $((YEAR%400)) -eq 0 -o $((YEAR%4)) -eq 0 -a $((YEAR%100)) -ne 0 ]
                then
                echo "It is a leap year";
        else
                echo "Not a leap year";
        fi
        }

        read -p "Enter the year  " YEAR;

        if [ $((YEAR/1000)) -ge 1 -a $((YEAR/1000)) -lt 10 ]; then
                echo " It is 4 digit";
                Leapyear
        else
                echo "Not a 4 digit.";
        fi

