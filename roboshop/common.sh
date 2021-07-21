#!/bin/bash

USER_ID_CHECK=$(id -u)
if [ $USER_ID_CHECK -ne 0]; then
	echo -e "\n[31m You should be a root or sudo user to run this script\e[0m"
	exit 2
fi

STATUS_CHECK(){
	if [ $1 -eq 0 ]; then
	echo -e "\e[33mDone\e[0m"
else
	echo -e "\e[33mfailed\e[0m (\e[31mPlease check the Errors in Log file at - $LOG\e[0m)"
	exit 1
fi
}
