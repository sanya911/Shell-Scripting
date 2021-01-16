#! /usr/bin/bash
#7.

cd ~/Downloads
start=$(echo $1 | cut -d "." -f 1)
#it takes the name of the file
end=$(echo $1| cut -d "." -f 2)
#it takes the type of the file
for file in $(ls | grep "^$start[ ][(][0-9]" | grep "$end")
#this will loop for all the files that has the same name then a space then bracket and inside the bracket a no.
do 
    echo $start $file
    if [ $file != $start ]
    then
        if $(diff "$start $file" $1)
        #if the content inside the file is same
        then
            echo "$start $file" same
            rm "$start $file"
        else
        #if not same it also give some error message which can be ignored
            echo "$start $file" not same
        fi
    fi
done
