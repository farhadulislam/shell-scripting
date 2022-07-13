#! /bin/bash
# Author : Farhad
# Date : 11 July 2022


echo "Enter name"
read name
printf "You've entered $name\n" 

read -p "Enter a number " NUMBER1
read -p "Enter another number " NUMBER2
c=`expr $NUMBER1 + $NUMBER2`
printf "\nAnswer is $c"


