#!/bin/bash


STATUS_CHECK(){
	if [ $1 -eq 0 ]; then
	echo -e "\e[33mDone\e[0m"
else
	echo -e "\e[33mfailed\e[0m (\e[31mPlease check the Errors in Log file at - $LOG\e[0m)"
	exit 1
fi
}
