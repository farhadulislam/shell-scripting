#!/bin/bash

for val in $(ls *): 
  do
    if [ "$val" -ne "insert_data.sh" ]
    then 
       continue 
    fi

  echo "Dummy data inserted">> $val
  done
