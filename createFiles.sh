#! /bin/bash
# Author: Md Farhad Ul Islam
# Version : 1.0.0

echo "PROVIDE TWO ARGS, FIRST for file ext such as txt, pdf, csv and SECOND for number of files you wish to create"
echo " "
sleep 2


#Deafult values
FILE_TYPE=${1:-txt}
NUM_OF_FILES=${2:-10}
DIR=${3:-TEST_FILES}

# mkdir -p TEST_FILES 

[ -d $DIR ] || mkdir $DIR

cd $DIR || echo "cd into $DIR failed"

for i in $NUM_OF_FILES
  do 
  time touch $(seq -f "dummy-%02g.$FILE_TYPE" 1 $NUM_OF_FILES)
  ls *.$FILE_TYPE
  echo "NUMER of files" && (ls *.$FILE_TYPE | wc -l)
  done

echo " "
echo " #You can run the following if you wish to rename files"
echo "ls | cut -d. -f1 | xargs -I {}  mv {}.txt {}.text"
echo "***************END*******************************"



