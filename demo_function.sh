#! /bin/bash
# Author: Md Farhad Ul Islam
# Created : 1st June 2022.

function say_hello(){
    echo "This is demo function"
    printf "This is a formatted %s \n" "text"
}

number1=10
number2=20

function demo_local_vars(){

    local number1=30
    local number2=40

    echo "Local vars : number1 $number1 number2 $number2"
}

echo "Global vars : number1 $number1 number2 $number2"

function main (){
    say_hello
    demo_local_vars
}

main 
