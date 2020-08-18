#!/bin/bash

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

