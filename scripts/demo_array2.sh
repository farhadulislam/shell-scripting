# /bin/bash
# Author : Farhad
# Date : 11 July 2022

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[dog]}
echo "values: " ${sounds[@]}
echo "keys: " ${!sounds[@]}
echo "Number of elements: " ${#sounds[@]}

for key in ${!sounds[@]}; do
    echo $key
done

for val in ${sounds[@]}; do
    echo $val
done

#delete dog
unset sounds[dog]
echo "values after deletion: " ${sounds[@]}
