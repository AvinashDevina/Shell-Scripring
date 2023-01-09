#!/bin/zsh

echo -e "\n"
echo -e "\n Installing Nginx"
yum install nginx -y &>/tmp/test.log
echo -e "\n"
