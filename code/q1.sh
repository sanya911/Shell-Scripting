#! /usr/bin/bash
# 1. (WSS) to check whether a particular file exists or not in /etc directory.
cd "/etc"
for a in $(ls -R | grep -w "$1") 
# ls -R takes all the files and the subfiles of etc directory then by using grep it seraches for the file that is given by the user 
do 
    if [ $a == "$1" ]
    # this checks if the name is exactly same with the file if yes then it prints that file exists and eixts the script
    then
        echo 
        echo "$1  :  File exists in /etc directory"
        echo
        exit
    fi
done
echo
echo "$1  :  File does not exist"
echo
# this code sometimes give an error message that permission is denied as for few files we do not have the read permission so when this code tries to read it sends an error message 
# but still we will get the expected output in the end.