#!/bin/bash

shopt -s extglob

# Program to check for a valid pincode.
#Accepts pattern like 450 075 and 450075

       read -p " Enter the 6 digit pin number  " pincode
       pat="^[1-9]{1}[0-9]{2}[[:space:]]?[0-9]{3}$"
       if [[ $pincode =~ $pat ]]; then
               echo " Yes it is a valid pincode."
               else
               echo " Not a valid pincode."
       fi
