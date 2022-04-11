#!/bin/bash
exec < input.csv
read header
while read line
do
   echo "Record is : $line"
done 