#! /usr/bin/bash
# 2. WSS to store all the pdf files of a directory to a particular directory.
cd "abc"
mkdir ~/def
#created a directory in the home folder

echo $(mv $(ls | grep .pdf) ~/def) 
# this checks for all the pdf file in the working dir and then moves it to the destination dir

for file in */*.pdf;
    do 
        echo $(mv $file ~/def)
        #this moves the files from the subfolder to its destination dir
    done
echo "done!"