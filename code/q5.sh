#! /usr/bin/bash
# 5. WSS to display Good Morning/ Good Afternoon  messages
hour=$(date "+%H") 
#gets the hour 
if [ $hour -ge 0 -a $hour -lt 12 ]
#checks if time is between 0 to 12
then
  message="Good Morning, $USER"

elif [ $hour -ge 12 -a $hour -lt 18 ] 
#checks if time is between 12 to 18
then
  message="Good Afternoon, $USER"
else 
  message="Good evening, $USER"
fi
echo $message
echo "HAVE A NICE DAY"