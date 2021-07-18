#!/bin/bash

echo -e "\tInstalling Nginx"
yum install nginx -y &>> ~/logs/frontend.log
echo "Installation is Successfull"

echo "Starting Nginx"
systemctl start nginx

echo "Enabling Nginx Auto Start after Reboot"
systemctl enable nginx
