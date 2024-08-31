#! /bin/bash

echo "seq commands";

# PRINT A RANGE

seq 10;

echo "";
seq 21 30;

seq -w 1 11;
seq -f '#%g#' 5;
seq -s 0 9;
seq 100 -5 0;

echo "DONE";
