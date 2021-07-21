#!/bin/bash

LOG=/tmp/roboshoplogs/frontend.log
source common.sh


echo -n -e "\t\e[32m1. Cleaning Old Code\e[0m.... \t\t\t"
cd /usr/share/nginx/html && rm -rf *
STATUS_CHECK $?


echo -n -e "\t\e[32m2. Downloading Frontend Code\e[0m.... \t\t"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m3. Extracting & Moving Frontend Code\e[0m.... \t"
unzip /tmp/frontend.zip &>>$LOG && mv frontend-main/* . &>>$LOG && mv static/* . &>>$LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m4. Cleaning useless Directories\e[0m.... \t\t"
cd /usr/share/nginx/html && rm -rf frontend-main static &>>$LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m5. Updating roboshop.conf\e[0m.... \t\t\t"
mv localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m6. Installing Nginx\e[0m....\t\t\t\t"
yum install nginx -y &>> $LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m7. Starting Nginx\e[0m....\t\t\t\t"
systemctl start nginx &>> $LOG
STATUS_CHECK $?

echo -n -e "\t\e[32m8. Enabling Nginx\e[0m....\t\t\t\t"
systemctl enable nginx &>> $LOG
STATUS_CHECK $?
