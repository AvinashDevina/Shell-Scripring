#!/bin/bash

LOG=/tmp/roboshoplogs/frontend.log

echo -n -e "\t\e[32m1. Installing Nginx....... \e[0m"
yum install ngiinx -y &>> $LOG
if [ $? -eq 0 ]; then
	echo -e "\e[33mDone\e[0m"
else
	echo -e "\e[33mfailed\e[0m (\e[31mPlease check the Log file at - $LOG\e[0m)"
fi
#echo "Starting Nginx"
#systemctl start nginx &>> $LOG
#echo "Nginx is Started"

#echo "Enabling Nginx Auto Start after Reboot"
#systemctl enable nginx &>> $LOG
#echo "Done Enabling Nginx"

