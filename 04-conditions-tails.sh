#/bin/bash

# here i checking the user id

USERID=$(id -u)

#echo " user id is $USERID"

#checking the permission

if [$USERID -ne 0 ]
    then
    echo "please run the script with root user"
    exit 1
fi

#installing the git

dnf install git -y

if [$? -ne 0]
    then
    echo "git is not installed going to install"
    dnf install git -y # installing the git
    if [$? -ne 0 ]
    then
    echo "git installation is success"
    exit 1
    else
    

