#! /bin/bash

car=("BMW" "Camry" "Honda" "Mercedes" "Daewoo")
echo "${car[@]}"
echo "${car[*]}"
echo "${car[1]}"

#! /bin/bash

car=("BMW" "Camry" "Honda" "Mercedes" "Daewoo")
unset car[2]
echo "${car[@]}"
echo "${car[0]}"
echo "${#car[@]}"


#! /bin/bash

car=("BMW" "Camry" "Honda" "Mercedes" "Daewoo")
car[2]="RAV4"
echo "${car[@]}"
echo "${car[0]}"
echo "${#car[@]}"



