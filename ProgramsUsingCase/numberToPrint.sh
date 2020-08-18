#!/bin/bash

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

