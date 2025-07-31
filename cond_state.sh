#! /bin/bash

count=10 

if [ $count -eq 10 ]
then
 
     echo "The condition is true"
else

 echo "The condition is false"
fi

#! /bin/bash

age=45

if [ "$age" -gt 10 ] && [ "$age" -lt 40 ]
 
then
 
     echo "meets age criteria"
else

 echo "Doesnt meet criteria"
fi

#! /bin/bash

age=47

if [ "$age" -gt 10 ] || [ "$age" -lt 40 ]
 
then
 
     echo "meets age criteria"
else

 echo "Doesnt meet criteria"
fi

