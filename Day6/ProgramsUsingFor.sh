#!/bin/bash


#Printing a table of powers of 2 .

       power=2;  #To calculate power of 2
       read -p "Enter the limit " n
               for ((i=1; i<=n; i++ ))
                do
                        echo "$power ";
                        power=$(($power*2));
                done


#Determination of a prime number

        read -p "Enter the number :" number

        for((i=2; i<=number/2; i++))
        do
                if [ $((number%i)) -eq 0 ]
                        then
                        echo "$num is not a prime number."
                        f=1;
			break;
                fi
        done
	if [ $f -eq 0 ]; then
	        echo "$num is a prime number."
	fi

#Prints the prime numbers fram a range.

        read -p "Enter the minimum limit :" min
        read -p "Enter the maximum limit :" max
        echo "The Prime numbers are : "
        for(( i=min; i<=max; i++))
        do
                f=0;
                for((j=2; j<=i/2; j++))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                #echo " $i is not a Prime number";
                                f=1;
                                break
                        fi
                done
                if [ $f -eq 0 ]
                then
                        echo " $i "
                fi
        done


#Program that prints factorial


        read -p " Enter the number to print the factorial " num;
        factorial=1;
        echo " The factorial is "
        for ((i=1; i<=num; i++))
        do
                factorial=$(($factorial*$i));
        done
        echo $factorial;


#Program that computes factors of a number by prime factorization method


        read -p " Enter the number  whose prime factors are to be found " num

        echo " The prime factors are ";
        #To check if it is divisible by 2

        until [ ! $(($num%2)) -eq 0 ]
        do
                echo 2
                num=$(($num/2));

        done

        #To check for numbers from 3
        n=$(($num*$num))
        for ((i=3; i<=$n; i++))
        do
                until [ ! $(($num%$i)) -eq 0 ]
                do
                        echo $i;
                        num=$(($num/$i))
                done
        done


#Harmonic Number
#HN=1+1/2+1/3+1/4+....1/N

	echo "Enter the limit for printing the Harmonic Number";
	read n
	rec=0;               #Reciprocal
	hn=0;               #For finding the total
	for (( i=2; i<=$n; i++ ))
	do
		rec=`printf %.2f "$(((100/$i)))e-2"`;
		hn=`awk "BEGIN {print $rec+$hn;exit}"`;
	done

	echo "The Harmonic number of $n is :"
	awk "BEGIN {print $hn+1;exit}";
