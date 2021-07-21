#!/bin/bash

LOG=/tmp/roboshoplogs/mongodb.log
source common.sh

echo -n -e "\t\e[32m1. Creating MongoDB Repo\e[0m....\t\t"
rm -f /etc/yum.repos.d/mongodb.repo -y &>>$LOG
echo '[mongodb-org-4.2]
name=MongoDBRepo
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' > /etc/yum.repos.d/mongodb.repo
STATUS_CHECK $?

echo -n -e "\t\e[32m1. Installing MongoDB\e[0m....\t\t"
yum install mongodb-org -y &>>$LOG
STATUS_CHECK $?


#Update Liste IP address from 127.0.0.1 to 0.0.0.0 in config file
#Config file: /etc/mongod.conf
#
#

#STATUS_CHECK $?
# yum install -y mongodb-org
# systemctl enable mongod
# systemctl start mongod
