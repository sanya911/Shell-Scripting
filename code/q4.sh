#! /usr/bin/bash
# 4. shows that when you logged in to the system.
echo "Enter Username: "
read name
last -1 -R $name | head -1 | cut -c 23-