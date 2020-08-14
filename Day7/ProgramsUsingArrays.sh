#!/bin/bash 


#Generate 10 random 3 digit numbers and store them in an array
#Find the 2nd largest and smallest number

        maximum() {

        greatest=`printf "${num[1]}"`;
        secondGreatest=`printf "${num[2]}"`;

        if [ $secondGreatest -gt $greatest ]; then
                greatest=`printf "${num[2]}"`;
                secondGreatest=`printf "${num[1]}"`;
        fi

        for ((i=3; i<=10; i++))
        do
        temp=`printf "${num[$i]}"`;
                if [ $temp -gt $greatest ]; then
                        secondGreatest=$greatest;
                        greatest=$temp;
                elif [ $temp -gt $secondGreatest ]; then
                        secondGreatest=$temp;
                fi
        done
        echo " The greatest number is $greatest & the second greatest is $secondGreatest"
        }

        minimum() {

        smallest=`printf "${num[1]}"`;
        secondSmallest=`printf "${num[2]}"`;

        if [ $secondSmallest -lt $smallest ]; then
                smallest=`printf "${num[2]}"`;
                secondSmallest=`printf "${num[1]}"`;
        fi

        for ((i=3; i<=10; i++))
        do
        temp=`printf "${num[$i]}"`;
                if [ $temp -lt $smallest ]; then
                        secondSmallest=$smallest;
                        smallest=$temp;
                elif [ $temp -lt $secondSmallest ]; then
                        secondSmallest=$temp;
                fi
        done
        echo " The smallest number is $smallest & the second smallest is $secondSmallest"
        }



        declare -a num
        for ((i=1; i<=10; i++))
        do
                num[$i]=$((RANDOM%900+100))
        done
        echo " The array is : " ${num[@]};
        maximum
        minimum


#Extend the above program to sort the array and then find the 2nd greatest and smallest number

	declare -a num
        for ((i=1; i<=10; i++))
        do
                num[$i]=$((RANDOM%900+100))
        done
        echo " The array is : " ${num[@]};

	#Sorting the array in Descending form
        for (( i=1; i<=10; i++))
        do
                for (( j=$(($i+1)); j<=10; j++))
                do
                        num1=`printf "${num[$i]}"`
                        num2=`printf "${num[$j]}"`
                        if [ $num2 -gt $num1 ]; then
                        temp1=$num1
                        temp2=$num2
                        num[(($i))]=$temp2
                        num[(($j))]=$temp1
                        fi
                done
        done

        echo " The new sorted array is : ${num[@]}";
        echo " The 2nd Greatest number is : ${num[2]}";
        echo " The 2nd Smallest number is : ${num[9]}";


#Store all the prime factors of number n into a array and finally display the output


        read -p " Enter the number  whose prime factors are to be found " num

        j=1;
        declare -a factors
        echo " The prime factors are ";
        #To check if it is divisible by 2

        until [ ! $(($num%2)) -eq 0 ]
        do
                factors[(($j))]=2;
                j=$(($j+1))
                num=$(($num/2));

        done

        #To check for numbers from 3
        n=$(($num*$num))
        for ((i=3; i<=$n; i++))
        do
                until [ ! $(($num%$i)) -eq 0 ]
                do
                        factors[(($j))]=$i;
                        j=$(($j+1))
                        num=$(($num/$i))
                done
        done

	#Printing the prime factors from the array
	echo " ${factors[@]}" ;


#Program to show sum of 3 integers add to zero

	sum=0;
	echo " Enter the three integers"
	declare -a integer
	for ((i=1; i<=3; i++))
	do
		read a
		integer[$i]=$a
	done

	echo " The entered array  containing numbers is ${integer[@]}";

	for (( i=1; i<=3; i++))
	do
		temp="${integer[$i]}"
		sum=$(($sum+$temp))
	done

	echo " Sum of the entered Integers " $sum


#Take a range from 0-100, find the digits that are repeated twice like 33,77 etc and store them in an array


	declare -a digits
	n=1;                          #for incrementing the digit array

	for ((i=1; i<100; i++))
	do
		if [ $(($i%11)) == 0 ]; then
		digits[$n]=$i;
		n=$(($n+1))
		fi
	done

	echo " The digits which are repeated twice are ${digits[@]}"
