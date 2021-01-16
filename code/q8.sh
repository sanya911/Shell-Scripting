#! /usr/bin/bash
#8. 

echo "File that user wants to copy:"
read file
pen_drive=$(df -h | grep sd | cut -c 39-| tail -n1)
# this takes the name and location of the pendrive
avail=$(df | grep sd | cut -d " " -f 12 | tail -n1)
#this saves the size of pen drive
req=$(ls -l $file | cut -d " " -f 5)

while [ $avail -lt $req ]
do 
   #asks the user to delete file until space is available for file    
   echo "Delete some files"
   ls $pen_drive
   echo "Enter file to be deleted"
   read del_file
   rm $pen_drive/$del_file
   FREE=$(df | grep sd | cut -d " " -f 12 | tail -n1)
done
#space is created now it can copy the file
echo copy the file
cp $file $pen_drive