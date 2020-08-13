#!/bin/bash

#Read single digit number and write the number in word

	read -p " Enter the single digit " number;

	case $number in                         #Checking for single digit using switch
       		0)
               		echo "ZERO"
               		;;
       		1)
               		echo "ONE";
               		;;
       		2)
               		echo "TWO";
                	;;
       		3)
                	echo "THREE";
                	;;
       		4)
                	echo "FOUR";
                	;;
       		5)
                	echo "FIVE";
                	;;
       		6)
                	echo "SIX";
                	;;
       		7)
                	echo "SEVEN";
                	;;
       		8)
                	echo "EIGHT";
                	;;
       		9)
                	echo "NINE";
                	;;
       		*)
               		echo "Not a single digit";
               		;;
	esac



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

#Read a number 1,10,100,1000 etc and display unit ten hundred…

	read -p " Enter the number " number;

	case $number in
       		1)
               		echo "UNIT";
               		;;
       		10)
              		echo "TEN";
                	;;
       		100)
                	echo "HUNDRED";
                	;;
       		1000)
                	echo "THOUSAND";
                	;;
        	*)
                	echo "Enter another number like 1,10,100,1000..";
                	;;
	esac


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


