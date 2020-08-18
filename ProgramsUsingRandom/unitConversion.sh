#!/bin/bash

#Unit Conversion
#1ft=12 in, then 42in = ? ft

        read -p "Enter the inches to be converted to feet " inch ;
        echo " Feet = ";
        printf %.3f "$(($inch*10/12))e-1" ;
        echo

#Rectangular plot of 60*40ft in metres and calculate area of 25 such plots

        echo "Enter the rectangular plot in feet;"
        read -p "Enter the length  " length;
        read -p "Enter the breadth " breadth;

        #To convert feet square to metre square is  to divide by 10.764

        area=$(($length*$breadth))
        echo "Area in feet square " $area;
        echo " Area in metre square is";
        printf %.3f "$(($area*1000*100/10764))e-2";

#Area for 25 such plots

        echo
        echo " Area for 25 such plots";
        plots=$(($area*25))
        printf %.3f "$(($plots*1000*100/10764))e-2";

