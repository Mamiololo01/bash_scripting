#! /bin/bash
# set an infinite while loop
while :
do
	read -p "Enter number ( -777 to exit ) : " n
        
        # break while loop if input is -777  
	[ $n -eq -777 ] && { echo "Bye for now!"; break; }

	isEvenNo=$(( $n % 2 ))  # get modules 
        [ $isEvenNo -eq 0 ] && echo "$n is an even number." || echo "$n is an odd number."

done
