#!/bin/bash
 
userid=$(id -u)
#echo "user id is: $userid"
 
if [ $userid -ne 0 ]; then
echo "Please run the script with sudo access"
exit 1
fi
 
VALIDATE() {
  if [ $? -ne 0 ]; then
    echo "$package installation ... FAILURE, please check the package name"  
    exit 1
  else
    echo "$package installation ... SUCCESS"     
  fi
}
 
for package in $@ #sudo sh install.sh nginx nodejs
do
dnf list installed $package &>> install.log
  if [ $? -ne 0 ]; then
    echo "$package not installed, installing now" 
    dnf install $package -y &>> install.log
    VALIDATE
  else
    echo "$package already installed"
  fi
done