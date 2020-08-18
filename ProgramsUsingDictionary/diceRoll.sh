#!/bin/bash

#Roll the die till any number has reached 10 times and store the result in a dictionary
#Find the number that reached maximum times and the minimum times also.

        #For counting the dice values
        d1=0;
        d2=0;
        d3=0;
        d4=0;
        d5=0
        d6=0;
        declare -a dice

        while [ $d1 -lt 10 ]
        do
        value=$((RANDOM%6+1))

        case $value in
                1)
                        d1=$(($d1+1))
                        dice[1]=$d1
                        ;;

                2)
                        d2=$(($d2+1))
                        dice[2]=$d2
                        ;;

                3)
                         d3=$(($d3+1))
                        dice[3]=$d3
                        ;;

                4)
                         d4=$(($d4+1))
                        dice[4]=$d4
                        ;;

                5)
                         d5=$(($d5+1))
                        dice[5]=$d5
                        ;;

                6)
                         d6=$(($d6+1))
                        dice[6]=$d6
                        ;;
      esac

        if [ $d2 -eq 10 -o $d3 -eq 10 -o $d4 -eq 10 -o $d5 -eq 10 -o $d6 -eq 10 ]; then
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
