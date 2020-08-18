#!/bin/bash

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


