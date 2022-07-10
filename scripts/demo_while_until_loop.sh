#! /bin/bash
# Author : Farhad
# Date created : 10 July 2022

: 'multi 
line 
comments'
function while_demo1(){
COUNTER=0;
while [ $COUNTER -lt 10 ]; do
    echo The counter is $COUNTER
    printf "\n"
    let COUNTER+=1
done
}


function while_demo2(){

printf "\nUNTIL DEMO\n"
echo 
COUNTER2=20
until [ $COUNTER2 -lt 10 ]; do
    echo The counter2 is $COUNTER2
    let COUNTER2-=1
done
}

function while_demo3(){
COUNTER3=0;
while [ $COUNTER3 -lt 10 ]; do
    echo CREATING FILES ...
    touch file$COUNTER3.txt
    printf "\n"
    let COUNTER3+=1
done 
}

#calling function while_demo1
if (while_demo1)
then 
    echo "while_demo1 ran"
else 
    echo "Failed"
fi




