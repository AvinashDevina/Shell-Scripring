#!/bin/zsh
LOG="/tmp/test.log"
echo -e "\n\033[1;31mInstalling Nginx\e[0m"
yum install nginx -y &>/tmp/test.log
if [ $? -eq 0 ]
  then
    echo -e "\n\033[1;33mNginx Installation is Successful\e[0m"
    echo -e "\n\033[1;31mCheck the Log file for More Info :$LOG \e[0m"
  else
    echo -e "\n\033[1;31mNginx Installation is failed\e[0m"
    echo -e "\n\033[1;31mCheck the Log file for More Info :$LOG \e[0m"
fi