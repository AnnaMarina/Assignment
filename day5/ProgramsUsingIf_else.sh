#!/bin/bash 

#Program that reads 5 Random 3 Digit values and print the minimum and maximum value.

        for (( i=0; i<5; i++ ))
                do
                number[((i))]=$((RANDOM%900+100))
                done
        echo ${number[@]};
        max=${number[0]};
        min=${number[0]};
	for (( i=0; i<5; i++ ))
		do
                if [ ${number[i]} -gt $max ]; then
                         max=${number[i]}
                fi
		if [ ${number[i]} -lt $min ]; then
                         min=${number[i]}
                fi
		done

        echo " The maximum value is " $max;
        echo " The minimum value is " $min;


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


#Write a program to simulate a coin flip and print out Head or Tails accordingly.

        coin=$((RANDOM%2))
        echo "Output after flipping the coin is: ";
        if [[ $coin -eq 0 ]]; then
                echo "Heads";
        else
                echo "Tail";
        fi
