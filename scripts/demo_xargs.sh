#! /bin/bash
#AUTHOR: FARHAD ISLAM
#DATE_CREATED:26 MAY 2024
#VERSION: 0.0.1

#Get a sequence of 5 numbers and echo the output. if no `echo` command supplied as 2nd cmd then it defaults to echo.
seq 5 | xargs;
seq 5 | xargs -t;

