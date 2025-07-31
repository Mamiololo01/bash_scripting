#! /bin/bash

ni=20
n2=40
n3=60
echo $[ni+n2+n3]
echo $[n1-n2-n3]
echo $[n1*n2*n3]
ans=`expr $ni \* $n2 \* $n3`
echo $ans
div=`expr $ni / $n2 / $n3`
echo $div
