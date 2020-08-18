#!/bin/bash

shopt -s extglob

#USER REGISTRATION
# User needs to enter the first name, last name, email id, mobile number and also set a password.

        flag=1;
        while [ $flag -eq 1 ]
        do
                read -p " Enter the Firstname  : " firstname

                #First name starts with Capital and minumum of 3 characters.
                first="^[[:upper:]]{1}[[:lower:]]{2,8}$"
                if [[ $firstname =~ $first ]]; then
                        echo " Valid First name. "
                        flag=0;
                        else
                        echo " Not a valid name. Enter valid one. "
                fi
        done

        flag=1;
        while [ $flag -eq 1 ]
        do
                read -p " Enter the Last name  : " lastname

                #Last name starts with Capital and minumum of 3 characters.
                last="^[[:upper:]]{1}[[:lower:]]{2,8}$"
                if [[ $lastname =~ $last ]]; then
                        echo " Valid Last name. "
                        flag=0;
                        else
                        echo " Not a valid name. Enter valid one. "
                fi
        done


        flag=1;
        while [ $flag -eq 1 ]
        do
                read -p " Enter your Email ID  : " email

                #Email has 3 mandatory part and 2 optional with pecise @ and . positions.
                id="^[a-zA-Z]{3}[a-zA-Z0-9\.\_\#]*\@[a-z]*\.(com.au|in|com|co.in|net)$"
                if [[ $email =~ $id ]]; then
                        echo " Valid Email ID. "
                        flag=0;
                        else
                        echo " Not a valid Email ID. Enter valid one. "
                fi
        done

        flag=1;
        while [ $flag -eq 1 ]
        do
                read -p " Enter your 10 digit Mobile number with the country code  : " mob

                #Mobile number has country code followed by space and 10 digit number.
                number="^[1-9]{2}[[:space:]][6-9]{1}[0-9]{9}$"
                if [[ $mob =~ $number ]]; then
                        echo " Valid Mobile number. "
                        flag=0;
                        else
                        echo " Not a valid mobile number. Enter valid one. "
                fi
        done


        flag=1;
        while [ $flag -eq 1 ]
        do
                echo " Please set your password "
                echo " 1. Minimum 8 characters and  should starts with an uppercase"
                echo " 2. Should have atleast 1 number and exactly 1 special character"
                read -p " Enter your password  " password

                if [[ ${#password} -ge 8 ]];
                then
                        pattern="^[[:upper:]]+[a-zA-Z]*([0-9]+[a-zA-Z]*(\!|\@|\#|\_|\-)|(\!|\@|\#|\_|\-)[a-zA-Z]*[0-9]+)[a-zA-Z0-9]*$"
                        if [[ $password =~ $pattern ]]
                        then
                                echo "Entered Password is valid";
                                flag=0;
                        else
                                echo "Password is not in the limit";
                        fi
                else
                        echo " Length not in the limit. Please re-enter";
                fi

                done

