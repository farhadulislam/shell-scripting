# tolower or uppercase
tr a-z A-Z < file.txt;
awk '{print tolower($0)}' file.txt;

#Renaming files
#Every file in the directory starting with a capital P to lower cases
for i in `ls P*`; do mv $i $(echo $i | tr [[:upper:]] [[:lower:]]); done


# find all .java files containing the word “interface” in the “src” directory:
find src -name "*.java" -type f -exec grep -l interface {} \;