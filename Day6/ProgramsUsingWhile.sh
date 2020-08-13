#!/bin/bash

#Printing a table of powers of 2 till 256 is reached.

	power=2;  #To calculate power of 2
	echo" The table is";
	while [ $power -le 256 ]
	do
		echo "$power ";
		power=$(($power*2));
	done

#Finding the magic number in between 1 to 100

	check=0
	echo " Please think of a number between 1 to 100"
	low=0;                  #Low and High values are the limits
	high=100;

	while [ $check != 3 ]
	do
		num=$((($high+$low)/2))
		printf " -------------------------- \n";
		printf "Enter 1 if the number is greater than $num \n Enter 2 if the number is less than $num \n Enter 3 If the answer is correct \n";
		printf " --------------------------  \n";
		read -p " Please enter the desired option " check

		case $check in
        		1)
		        low=$num;
        		;;

        		2)
        		high=$num;
        		;;

        		3)
        		echo " The number is "  $num
        		;;

        		*)
        		echo "Please enter valid option";
        		;;

        	esac
	done


# Extend the flip coin problem till either heads or tail wins 11 times

	hcount=0;
	tcount=0;
	while [ $hcount -lt 11 ]
	do
		count=$((RANDOM%2))
		case $count in
			0)
				hcount=$(($hcount+1))             #Counting number of Heads
				;;
			1)
				tcount=$(($tcount+1))             #Counting number of Tails
				;;
			*)
				;;

			esac

		if [ $tcount -eq 11 ]; then
			break
		fi
	done

	echo "The number of Head count is $hcount "
	echo "The number of Tail count is $tcount "


#Program where a gambler starts with Rs 100 and places Re 1 bet until she goes broke ie no more money to gamble or reaches the goal of 200. 
#Keeps track of number of times won and number of bets made.


 	echo "Re 1. for placing bet. If success, will get Rs.5 else loose the money used for bet";
	echo "Money in hand is Rs.100";
	money=100;
	bets=0;
	won=0;
	fail=0;

	while [ $money -ne 0 ]
		do
		money=$(($money-1))
		#Placed bet for Re.1

		gamble=$(($RANDOM%2))
		#Gambling; 0 for Success and 1 for failure

		bets=$(($bets+1))
		#Counting the number of bets

		case $gamble in

			0)
				money=$(($money+5))
				won=$(($won+1))
				;;

			1)
				fail=$(($fail+1))
				;;

			*)
				;;

			esac
		if [ $money -gt 200 ]; then
			break
		fi
	done

	echo " Number of wins : $won"
	echo " Number of Fails : $fail"
	echo " Number of Bets made : $bets " 
	echo " Money in hand : $money"
