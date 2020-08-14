#!/bin/bash

#Roll the die till any number has reached 10 times and store the result in a dictionary
#Find the number that reached maximum times and the minimum times also.

	#For counting the dice values
	a=0;
	b=0;
	c=0;
	d=0;
	e=0
	f=0;
	declare -a dice

	while [ $a -lt 10 ]
	do
	value=$((RANDOM%6+1))

	case $value in
                1)
                        a=$(($a+1))
                        dice[1]=$a
                        ;;

                2)
                        b=$(($b+1))
                        dice[2]=$b
                        ;;

                3)
                         c=$(($c+1))
                        dice[3]=$c
                        ;;

                4)
                         d=$(($d+1))
                        dice[4]=$d
                        ;;

                5)
                         e=$(($e+1))
                        dice[5]=$e
                        ;;

                6)
                         f=$(($f+1))
                        dice[6]=$f
                        ;;

	esac

        if [ $b -eq 10 -o $c -eq 10 -o $d -eq 10 -o $e -eq 10 -o $f -eq 10 ]; then
                break

        fi

	done

	echo " The dice values and number of times value is shown below"
	echo " ${!dice[@]}"
	echo " ${dice[@]}"

	#For finding the minimum and maximum
	max=${dice[1]};
        min=${dice[1]};
        for (( i=1; i<=6; i++ ))
                do
                if [ ${dice[i]} -gt $max ]; then
                         max=${dice[i]}
                        m=$i;
                fi
                if [ ${dice[i]} -lt $min ]; then
                         min=${dice[i]}
                        mn=$i;
                fi
                done

        echo " The maximum value is  $max and the dice value is $m";
        echo " The minimum value is $min and the dice value is $mn";



#Program to generate birthday of 50 individuals.Store and print the individuals having birthday in the same month


	a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=0; m=0; j=0; k=0; l=0;

        declare -A birthday
        for ((i=1; i<=50; i++))
        do
                month=$((RANDOM%12+1))
                case $month in
                        1)
                                birthday[jan]=$(($a+1));
                                a=$(($a+1))
                                ;;
                        2)
                                birthday[feb]=$(($b+1));
                                b=$(($b+1))
                                ;;
                        3)
                                birthday[mar]=$(($c+1));
                                c=$(($c+1))
                                ;;
                        4)
                                birthday[apr]=$(($d+1));
                                d=$(($d+1))
                                ;;
                        5)
                                birthday[may]=$(($e+1));
                                e=$(($e+1))
                                ;;
                        6)
                                birthday[jun]=$(($f+1));
                                f=$(($f+1))
                                ;;
                        7)
                                birthday[july]=$(($g+1));
                                g=$(($g+1))
                                ;;
                        8)
                                birthday[aug]=$(($h+1));
                                h=$(($h+1))
                                ;;
                        9)
                                birthday[sep]=$(($m+1));
                                m=$(($m+1))
                                ;;
                        10)
                                birthday[oct]=$(($j+1));
                                j=$(($j+1))
                                ;;
                        11)
                                birthday[nov]=$(($k+1));
                                k=$(($k+1))
                                ;;
                        12)
                                birthday[dec]=$(($l+1));
                                l=$(($l+1))
                                ;;
                esac
        done

        echo " The months and number of birthdays are";
        echo "${!birthday[@]}"
        echo "${birthday[@]}"

        flag=1; f=0;

        while [ $flag -eq 1 ]
        do
                read -p " Enter the month to know about the number of birthdays " mon

                for n in ${!birthday[@]}
                do
                        if [ $mon == $n ]
                        then
                                echo "${birthday[$mon]}"
                                f=1;
                                break
                        fi
                done

                if [ $f -ne 1 ]
                then
                        echo " Enter the Correct option!!"
                fi
                read -p " Enter 1 for trying again.  " flag

        done
