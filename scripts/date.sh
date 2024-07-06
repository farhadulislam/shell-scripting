#! /bin/bash

echo "Date DEMO"

read -p "Enter a date: " date

pattern="/^[0-9]{8}$"

if [[ $date =~$pattern ]]; then 
   echo "$date is valid"
else
   echo "$date is not valid"
fi
DATE=`date`;
echo $DATE;


