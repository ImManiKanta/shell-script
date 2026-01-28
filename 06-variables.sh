#!/bin/bash

<<COMMENT
by using read we don't show the sensitive info in files read cmd will 
store the data"
COMMENT

echo "Please Enter your username::"
read USER_NAME #it will show username on console

echo "User name is $USER_NAME"

echo "Please enter your password::"
read -s PASSWORD #it will not show password on console

echo "Password is $PASSWORD"