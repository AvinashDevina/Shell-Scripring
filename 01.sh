#!/bin/zsh

echo -e "\n\033[1;31mINSTALLING NGINX\e[0m"
yum install nginx -y &>/tmp/test.log
if [ $? -eq 0 ]
  then
    echo -e "\n\033[1;33mNGINX INSTALLATION IS SUCCESSFUL\e[0m"
  else
    echo -e "\n\033[1;31mNGINX INSTALLATION IS FAILED\e[0m"
fi