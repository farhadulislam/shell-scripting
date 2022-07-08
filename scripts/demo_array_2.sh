
## more ARRAY examples

NUMBERS=(1, 2, 3, four, 5, 6, 7, "This is eight")
echo $NUMBERS
echo ${NUMBERS[@]}
echo ${#NUMBERS[@]}
printf "\nBelow is index of arrays\n"
echo ${!NUMBERS[@]}
echo ${NUMBERS[@]:2:5}
echo ${NUMBERS[@]::2}