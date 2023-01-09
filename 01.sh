#!/bin/zsh

echo -e "/n"
echo "Installing Nginx"
yum install nginx -y &>/tmp/test.log
