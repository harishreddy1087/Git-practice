#/bin/bash

# here i checking the user id

USERID=$(id -u)

#echo " user id is $USERID"

#checking the permission
# -gt, -lt, -ne, -ge, -le, -eq

if [ $USERID -ne 0 ]
    then
    echo "please run the script with root user"
    exit 1
fi

#check the installing the git

dnf install git -y
# $?== duty of this command is to check the previous command is executed or not...
if [ $? -ne 0 ]
    then
     echo "git is not installed try again"
     dnf install git -y # installing the git
    if [$? -ne 0 ]
    then
     echo "git installation is failed"
     exit 1
    else
     echo "git installation successfull...."
    fi
else
     echo "git is already installed"
fi

# here my requriment is to install the nginx software

dnf install nginx -y
# check the nginx is installed or not
if [ $? -ne 0 ]
    then
        echo "nginx is not installed try again"
dnf install nginx -y
    if [ $? -ne 0 ]
    then 
        echo "nginx installion failed"
        exit 1
    else    
        echo "nginx is installed"
    fi
fi
# checking git & nginx softwares are installed or not
git --version

if  [ $? -ne 0 ]
    then
     echo "git is not instlled"
else
    echo "git version is $(git --version)"
fi

nginx --version

if  [ $? -ne 0 ]
    then
     echo "git is not instlled"
else
    echo "git version is $(nginx --version)"
fi