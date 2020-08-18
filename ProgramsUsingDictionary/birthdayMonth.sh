#!/bin/bash

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

	#For the user to know data about particular month.

        flag=1;

        while [ $flag -eq 1 ]
        do
		f=0;
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

