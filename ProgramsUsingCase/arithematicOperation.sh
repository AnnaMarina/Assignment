#!/bin/bash

#Enter 3 numbers do following arithmetic operation and find the one that is maximum and minimum
#i. a+b*c
#ii.a%b+c
#iii.c+a/b
#iv.a*b +c


        arithmetic () {
                value1=$(($1+$2*$3))            #$1=num1 $2=num2 $3=num3
                        echo "a+b*c= "$value1
                value2=$(($1%$2+$3))
                        echo "a%b+c= "$value2
                value3=$(($3+$1/$2))
                        echo "c+a/b= " $value3
                value4=$(($1*$2+$3))
                        echo "a*b+c= " $value4
        }


        maxandmin () {

                if [ $1 -gt $2 -a $1 -gt $3 ]; then
                        echo $1 " is the largest";
                elif [ $2 -gt $3 -a $2 -gt $1 ]; then
                        echo $2 "is the largest";
                else
                        echo $3" is the largest";
                fi

                if [ $1 -lt $2 -a $1 -lt $3 ]; then
                        echo $1 " is the smallest";
                elif [ $2 -lt $3 -a $2 -lt $1 ]; then
                        echo $2 "is the smallest";
                else
                        echo $3" is the smallest";
                fi

}

        read -p "Enter the three numbers" num1
        read num2
        read num3
        echo "Entered no.s are a= "$num1 " b= "$num2 " c="$num3
        arithmetic $num1 $num2 $num3    #Numbers are send to the function
        maxandmin $num1 $num2 $num3


