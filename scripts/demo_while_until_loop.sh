#! /bin/bash
# Author : Farhad
# Date created : 10 July 2022

: 'multi line comments'
COUNTER=0;
while [ $COUNTER -lt 10 ]; do
    echo The counter is $COUNTER
    printf "\n"
    let COUNTER+=1
done

printf "\nUNTIL DEMO\n"
echo 
COUNTER2=20
until [ $COUNTER2 -lt 10 ]; do
    echo The counter2 is $COUNTER2
    let COUNTER2-=1
done


