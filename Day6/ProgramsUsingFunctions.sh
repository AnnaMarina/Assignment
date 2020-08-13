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
