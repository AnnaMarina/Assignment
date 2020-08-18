#!/bin/bash

#Write a program that takes user input and does the following conversion of different length unit
#1. Feet to Inch
#2. Inch to feet
#3. Feet to meter
#4. Meter to feet



        printf "Enter the operation to done \n 1.Feet to Inch \n 2.Inch to Feet \n 3.Feet to Meter \n 4.Meter to feet \n"
        read num
                case $num in
                1)
                        read -p "Enter the Feet value " feet
                        echo "The value in Inches is" $(($feet*12))
                        ;;
                2)
                        read -p "Enter the Inches value " inch
                        echo " The value in Feet is "
                        printf %.3f "$(($inch*100/12))e-2"
                        ;;
                3)
                        read -p "Enter the Feet value " feet
                        echo " The value in Meter is "
                        printf %.3f "$(($feet*100*1000/3281))e-2"
                        ;;
                4)
                        read -p "Enter the meter value " meter
                        echo " The value in Feet is "
                        printf %.3f "$(($meter*3281*100/1000))e-2"
                        ;;
                *)
                        echo " Enter the correct option ";
                        ;;
                esac

