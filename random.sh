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
