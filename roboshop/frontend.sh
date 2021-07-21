#!/bin/bash

LOG=/tmp/roboshoplogs/frontend.log

echo -e "\e[34mSaving old logs....\e[0m"
mv -f /tmp/roboshoplogs/frontend.log /tmp/roboshoplogs/oldlogs/frontend$(date "+%Y-%m-%d").log &>> $LOG
if [ $? -eq 0 ]; then
	echo Done
else
	echo No old Files Found
fi


#echo -e "Step1 : \e[32mInstalling Nginx\e[0m"


#yum install nginx -y &>> $LOG


#echo "Installation is Successful"

#echo "Starting Nginx"
#systemctl start nginx &>> $LOG
#echo "Nginx is Started"

#echo "Enabling Nginx Auto Start after Reboot"
#systemctl enable nginx &>> $LOG
#echo "Done Enabling Nginx"

