#!/bin/bash
# Purpose: To display the system information.

echo "Welcome to System Server Stats"
echo "Please enter your name:"
read name

echo "Hello $name, Below is the Detailed server status."

echo "*******************************CURRENT DATE AND TIME******************************"
date

echo "
"

echo "*******************************DISK SPACE AVAILABLE*******************************"
df -H | xargs | awk '{ print "Disk Space Available : " "Free/Used : " $10 "/" $9 }'

echo "
"

echo "***********************************USERS UPTIME***********************************"
uptime

echo "
"

echo "***********************************LAST THREE USER DETAILS*******************************"
last | head -3

echo "
"

echo "***********************************CURRENTLY CONNECTED***********************************"
w

echo "
"

echo "***********************************END OF INFORMATION************************************"
