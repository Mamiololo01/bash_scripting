#!/bin/bash

$ cat signal.sh

if [ $# -lt 2 ]
then
        echo "Usage : $0 Signalnumber PID"
        exit
fi

case "$1" in

1)  echo "Sending SIGHUP signal"
    kill -SIGHUP $2
    ;;
2)  echo  "Sending SIGINT signal"
    kill -SIGINT $2
    ;;
3)  echo  "Sending SIGQUIT signal"
    kill -SIGQUIT $2
    ;;
9) echo  "Sending SIGKILL signal"
   kill -SIGKILL $2
   ;;
*) echo "Signal number $1 is not processed"
   ;;
esac



$ sleep 1000

$ ps -a | grep sleep
23277 pts/2    00:00:00 sleep

$ ./signal.sh 9 23277
Sending SIGKILL signal

$ sleep 1000
Killed


# Start up script

$ cat startpcapp
#!/bin/bash

case "$1" in
'start')
echo "Starting application"
/usr/bin/startpc
;;
'stop')
echo "Stopping application"
/usr/bin/stoppc
;;
'restart')
echo "Usage: $0 [start|stop]"
;;
esac

$ ./startpcapp start
Starting application
/usr/bin/startpc started



#Prompt user for Yes or No

$ cat yorno.sh
#!/bin/bash

echo -n "Do you agree with this? [yes or no]: "
read yno
case $yno in

        [yY] | [yY][Ee][Ss] )
                echo "Agreed"
                ;;

        [nN] | [n|N][O|o] )
                echo "Not agreed, you can't proceed the installation";
                exit 1
                ;;
        *) echo "Invalid input"
            ;;
esac

$ ./yorno.sh
Do you agree with this? [yes or no]: YES
Agreed

#Pattern match in File

$ cat fileop.sh
#!/bin/bash

# Check 3 arguments are given #
if [ $# -lt 3 ]
then
        echo "Usage : $0 option pattern filename"
        exit
fi

# Check the given file is exist #
if [ ! -f $3 ]
then
        echo "Filename given \"$3\" doesn't exist"
        exit
fi

case "$1" in

# Count number of lines matches
-i) echo "Number of lines matches with the pattern $2 :"
    grep -c -i $2 $3
    ;;
# Count number of words matches
-c) echo "Number of words matches with the pattern $2 :"
    grep -o -i $2 $3 | wc -l
    ;;
# print all the matched lines
-p) echo "Lines matches with the pattern $2 :"
    grep -i $2 $3
    ;;
# Delete all the lines matches with the pattern
-d) echo "After deleting the lines matches with the pattern $2 :"
    sed -n "/$2/!p" $3
    ;;
*) echo "Invalid option"
   ;;
esac

#Find file type from extension

$ cat filetype.sh
#!/bin/bash
for filename in $(ls)
do
	# Take extension available in a filename
        ext=${filename##*\.}
        case "$ext" in
        c) echo "$filename : C source file"
           ;;
        o) echo "$filename : Object file"
           ;;
        sh) echo "$filename : Shell script"
            ;;
        txt) echo "$filename : Text file"
             ;;
        *) echo " $filename : Not processed"
           ;;
esac
done

$ ./filetype.sh
a.c : C source file
b.c : C source file
c1.txt : Text file
fileop.sh : Shell script
obj.o : Object file
text : Not processed
t.o : Object file
