#!/bin/bash


function switch_district(){

echo -ne "Enter the name of a District: "
read DISTRICT
    
echo -e "\n $DISTRICT is located in "

case $DISTRICT in

  Chittagong | Feni | CoxBazar | Banadarban | Rangamati | Kahgrachhari)
    echo -n "Chittagong"
    ;;

  Barisal | Pirojpur | Jhalokathi)
    echo -n "Barisal"
    ;;

  Khulna | Bagerhat)
    echo -n "Khulna"
    ;;
  Dhaka | Munsiganj | Gazipur | Faridpur | Narayanganj | Mymensing | Narsingdi)
    echo -n "Dhaka"
    ;;

  *)
    printf "\n Sorry, not known $*"
    ;;
esac
}

function main(){
x=1
while [ $x -le 5 ]
do
  switch_district

  x=$(( $x + 1 ))
done

}

main 