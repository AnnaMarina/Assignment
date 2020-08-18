#!/bin/bash -x

#Find degF or degC based on conversion selection. Should be between (0-100)degC and (0-32)degF
#degF=(degC*9/5)+32
#degC=(degF-32)*5/9

        tconversion() {
        case $temp in

        F)
        read -p "Enter the Farenheit value to be converted " faren
        if [ $faren -gt 32 -a $faren -lt 212 ]; then
                echo "The converted value to Celsius is"
                printf %.3f "$((($faren-32)*5*100/9))"e-2
        else
                echo "Not in limit";
        fi
        ;;

        C)
        read -p "Enter the Celsius value to be converted " cels
        if [ $cels -lt 100 ]; then
                echo "The converted value to Farenheit is "
                printf %.3f "$((($cels*9*100/5)+3200))"e-2
        else
                echo "Not in limit";
        fi
        ;;

        *)
        echo "Enter either F or C "
        ;;
        esac
        }

        read -p "Enter C for degC to degF or enter F for degF to degC :   " temp
        tconversion
