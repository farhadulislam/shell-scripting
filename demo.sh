#! /bin/bash

echo "Hello, this is demo";

read -p "Provide an input" input || echo " No input provided";

echo "Input provided is $input"

read -p "Enter a number: " number;

if [ $number -ge 16];
then
   echo "OK"
elif [$number -le 15];
then
   echo "Wait, one more year"
else
   echo "Invalid input"
fi


# create a file and show its contents
touch sampleFile.txt && "This is a sample file" >> sampleFile.txt && cat sampleFile
rm sampleFile

# create a dir if it doesn't exist
[ -d sampleDir ] || mkdir sampleDir
ls -d */;

getDate(){
    date
    return
}

demoLocalVariable(){
    name="Farhad";
    return;
}

getSum(){

local num1=$1
local num2=$2
return $((num3+num4))
}

getDate
demoLocalVariable
echo "Sum of two numbers demo";
num3=35
num4=37
sum=$(getSum num3 num4)
echo $sum
