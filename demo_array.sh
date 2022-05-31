#! /bin/bash

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
