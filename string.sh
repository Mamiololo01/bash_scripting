#! /bin/bash

    echo "enter 1st string"
read st1
    echo "enter 2nd string"
read st2

if [ "$st1" == "$st2" ]

then 
    echo "both strings match"

else 
    echo "strings dont match"

fi

#! /bin/bash

    echo "enter 1st string"
read st1
    echo "enter 2nd string"
read st2

if [ "$st1" \< "$st2" ]

then 
    echo "$st1 is smaller than $st2"

elif [ "$st1" \> "$st2" ]
then 
    echo "$st2 is smaller than $st1"
else
    echo "both string are equal"
fi

#! /bin/bash

    echo "enter 1st string"
read st1
    echo "enter 2nd string"
read st2

c=$st1$st2
  echo $c
  
 #! /bin/bash
#lower and upper case conversion
    echo "enter 1st string"
read st1
    echo "enter 2nd string"
read st2
   echo ${st1^}
   echo ${st2^^}





