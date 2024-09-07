#! /bin/bash
# Author: Md Farhad Ul Islam
# Version : 1.0.0


echo " "
echo "PROVIDE THREE ARGS, FIRST for file ext such as txt, pdf, csv and SECOND for number of files you wish to create"
echo " "
sleep 2

for x in $1 $2 $3
do  
    #if [ ! -z "$x" ];then 
    echo "RECEIVED THREE ARGS : $x" 
    
done


#Deafult values
FILE_TYPE=${1:-txt}
NUM_OF_FILES=${2:-10}
DIR=${3:-TEST_FILES}

# mkdir -p TEST_FILES 

[ -d $DIR ] || mkdir $DIR

cd $DIR || echo "cd into $DIR failed"

time touch $(seq -f "dummy-%02g.$FILE_TYPE" 1 $NUM_OF_FILES)
ls *.$FILE_TYPE
echo "FILES CREATED: $(ls *.$FILE_TYPE | wc -l) " 


echo " "
for i in $(ls *.$FILE_TYPE)
 do 
  echo "Some test data" > $i
 done

echo " "
echo "#You can run the following if you wish to rename files"
echo "ls | cut -d. -f1 | xargs -I {}  mv {}.txt {}.text"
echo "***************END*******************************"
# renaming file
#for file in *; do [ -f "$file" ] && mv "$file" "tech_$file"; done

# rename again if you have renamed with incorrect prefix
#for file in tech_*; do mv "$file" "${file/tech_/tech_arch_}"; done

