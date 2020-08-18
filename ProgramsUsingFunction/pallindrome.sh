#!/bin/bash

#Write a function to check if two numbers are Pallindrome


        pallindrome() {
        read n
        num=$n
        rev=0
        while [ $num != 0 ]
        do
                rem=$(($num % 10))
                rev=$((($rev*10)+$rem))
                num=$(($num/10))
        done
        if [ $rev == $n ]; then
                echo $n "is a pallindrome"
        else
                echo $n "is not a pallindrome"
        fi
}

        echo "Enter the first number";
        pallindrome
        echo "Enter the second number";
        pallindrome



#Take a number from user and check if it is a prime number and a pallindrome.


        pallindrome() {
        num=$number
        rev=0
        while [ $num != 0 ]
        do
                rem=$(($num % 10))
                rev=$((($rev*10)+$rem))
                num=$(($num/10))
        done

        if [ $rev == $number ]; then
                echo $number " is a pallindrome"
        else
                echo $number " is not a pallindrome"
        fi
}

        primenumber(){
        for((i=2; i<=$(($number/2)); i++))
        do
                if [ $((number%i)) -eq 0 ]
                        then
                        echo "$number is not a prime number."
                        f=1;
                        break;
                fi
        done
        if [ $f -eq 0 ]; then
                echo "$number is a prime number."
        fi

}

        read -p "Enter the  number" number
        pallindrome
        primenumber

