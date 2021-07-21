#!/bin/bash

LOG=/tmp/roboshoplogs/frontend.log
source common.sh

echo -n -e "\t\e[32m1. Installing Nginx\t....\e[0m"
yum install nginx -y &>> $LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m2. Starting Nginx\t....\e[0m"
systemctl start nginx &>> $LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m3. Enabling Nginx\t....\e[0m"
systemctl enable nginx &>> $LOG
STATUS_CHECK $?
