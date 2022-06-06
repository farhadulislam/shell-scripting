#! /bin/bash

#define a function that loops over each array element and displays

function show_array_elements(){

    echo "Function show_array_elements called"
    echo
    sleep 1
    for i in ${!array[@]}; do
    echo "element $i is ${array[$i]}"
done
}

#demo exmaples below

myArray=("Apple", "Banana", "Cat", "Dog")

for i in ${myArray[@]}; do
    echo "$i"
done

#Note: Check below code.  The exclamation mark at the beginning of the myArray variable 
#indicates that you are accessing the indices of the array and not the elements themselves. This can be confusing 
#if you are used to the exclamation mark indicating negation, 
#so pay careful attention to that.

#Another note: Bash does not typically require curly braces for variables, 
#but it does for arrays. So you will notice that when you reference an array, 
#you do so with the syntax ${myArray}, but when you reference a string or number, 
#you simply use a dollar sign: $i. */

for i in ${!myArray[@]}; do
    echo "element $i is ${myArray[$i]}"
done


declare -a secondArray # 
secondArray=('Abu Dhabi' 'Dubai' 'Sharjah')

declare -A thirdArray # associated array
thirdArray=([city1]='Tokyo' [city2]='Hong Kong' [city3]='Kualalumpur')

echo "${secondArray[@]}"
echo "${secondArray[*]}"
#echo "${!thirdArray[*]"

for i in ${!thirdArray[@]}; do
    echo "element $i is ${thirdArray[$i]}"
done

sleep 1
echo



#######################EXAMPLES################################################
echo "One more associative array"
echo 
sleep 1

declare -a associativeArray=([dist1]='Chittagon', [dist2]='Comilla', [dist3]='Faridpur')

echo "${associativeArray[@]}"
echo "${associativeArray[*]}"

show_array_elements $associativeArray