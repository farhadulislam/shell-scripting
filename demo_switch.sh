#!/bin/bash



function switch_over(){

echo -ne "Enter the name of a District: "
read DISTRICT
    
echo -e "\n $DISTRICT is located in "

case $DISTRICT in

  Chittagong | Feni | CoxBazar | Banadarban)
    echo -n "Chittagong"
    ;;

  Barisal | Pirojpur | Jhalokathi)
    echo -n "Barisal"
    ;;

  Khulna | Bagerhat)
    echo -n "Khulna"
    ;;
  Dhaka | Munsiganj | Gazipur | Faridpur | Narayanganj)
    echo -n "Dhaka"
    ;;

  *)
    echo -ne "\nSorry, not known $*"
    ;;
esac
}

function main(){
x=1
while [ $x -le 5 ]
do
  switch_over

  x=$(( $x + 1 ))
done

}

main 