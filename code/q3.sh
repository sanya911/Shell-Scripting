#! /usr/bin/bash
# 3. WSS to list 5 recently executed commands.
# as history -5 does not work inside shell script 
# using the bash_history file where all the commands have been stored
cd ~
count=$(wc -l <".bash_history")
#this stores the no. of commands in the file
n=0
((count=count-5))
while read p
do
((n = n+1))
    if [ $n -ge $count ]
    then
        echo $p
    fi
done <.bash_history
