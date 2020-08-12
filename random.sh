#!/bin/bash 

#SEQUENCE PRACTISE PROBLEMS


#Program to get single digit

	echo "The single digit is" $((RANDOM%9+1))


#Program to get dice number

	echo "The value from the dice is" $((RANDOM%6+1))


#Add two random dice number and print the result

	DICE_ONE=$((RANDOM%6 + 1))
	DICE_TWO=$((RANDOM%6 + 1))
	echo " The dice values are" $DICE_ONE "  " $DICE_TWO
	sum=$(($DICE_ONE + $DICE_TWO))
	echo "The sum is" $sum

#Program that reads 5 Random two digit values and then find the sum and average

	for (( i=0; i<5; i++ ))
	do
		number[((i))]=$((RANDOM%90+10))
	done
	sum=0

	for n in ${number[@]}
	do
        	sum=`expr $sum + $n`
	done
	echo " The sum is " $sum "and the average is " $(($sum/5))

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
