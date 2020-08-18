#!/bin/bash

#Read a number and display the week day


        read -p " Enter the number for the day " number;

        case $number in                 #Checking for respective day using switch
                1)
                        echo "MONDAY";
                        ;;
                2)
                        echo "TUESDAY";
                        ;;
                3)
                        echo "WEDNESDAY";
                        ;;
                4)
                        echo "THURSDAY";
                        ;;
                5)
                        echo "FRIDAY";
                        ;;
                6)
                        echo "SATURDAY";
                        ;;
                7)
                        echo "SUNDAY";
                        ;;
                *)
                        echo "Entered the wrong number";
                        ;;
        esac

