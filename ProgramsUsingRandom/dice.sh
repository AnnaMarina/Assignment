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
