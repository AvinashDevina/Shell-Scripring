#!/bin/zsh

echo -e "\n\033[1;31mINSTALLING NGINX\e[0m"
yum install nginx -y &>/tmp/test.log
if [$? == 0 ]; then
  echo -e "\n\033[1;33mNGINX INSTALLATION IS SUCCESSFUL\e[0m"
fi