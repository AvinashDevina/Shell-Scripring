#!/bin/bash

LOG=/tmp/roboshoplogs/frontend.log

echo -e "\t\e[32m1. Installing Nginx\e[0m"
yum install nginx -y &>> $LOG
if [ $? -eq 0 ]; then
	echo "Installation is Successful"
else
	echo "Installation is fail"
fi
#echo "Starting Nginx"
#systemctl start nginx &>> $LOG
#echo "Nginx is Started"

#echo "Enabling Nginx Auto Start after Reboot"
#systemctl enable nginx &>> $LOG
#echo "Done Enabling Nginx"

