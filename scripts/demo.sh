#! /bin/bash

echo "Hello, this is demo";

read -p "Provide an input" input || echo " No input provided";

echo "Input provided is $input"

read -p "Enter a number: " number;

if [ $number -ge 16 ];
then
   echo "OK"
elif [$number -le 15 ];
then
   echo "Wait, one more year"
else
   echo "Invalid input"
fi


# create a file and show its contents
touch sampleFile.txt &&  echo "This is a sample file" >> sampleFile.txt 
cat sampleFile.txt
rm sampleFile.txt

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


#### STRINGS #####
echo "STARTING STRING DEMO"
sleep 2
str1=""
str2="Monday"
str3="Tuesday"

if [ $str2 ]; then
   echo "$str2 is not empty"
fi

if [ -z $str1 ]; then
  echo "$str1 has no value"
fi


# create files using seq and args
seq 10 | xargs -I {} touch {}.txt

#create files using seq and touch
touch $(seq -f "file-%g.txt" 1 10)
touch $(seq -f "dummy-%02g.txt" 1 20)


#Renaming bunch of files
ls | cut -d. -f1 | xargs -I {}  mv {}.txt {}.text


echo "Enter name"
read name
printf "$name"





