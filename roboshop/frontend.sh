#!/bin/bash

mv -f frontend.log frontend$(date "+%Y-%m-%d").log

LOG=/tmp/roboshoplogs/frontend.log
echo -e "Step1 : \e[32mInstalling Nginx\e[0m"
yum install nginx -y &>> $LOG
#echo "Installation is Successful"

#echo "Starting Nginx"
#systemctl start nginx &>> $LOG
#echo "Nginx is Started"

#echo "Enabling Nginx Auto Start after Reboot"
#systemctl enable nginx &>> $LOG
#echo "Done Enabling Nginx"

