#!/bin/bash

echo "below practice is most use full for the interview purpose"

#want to pass the all variables to the script
# harish reddy 120
#while executing we have to pass the inputs
# final answer all variables passed to the script: harish reddy 120 this is final output when u execute

echo "all variables passed to the script: $@"



# want to know the how may number of variables are passed to the script during executions
# you will see the output as 
#all variables passed to the script: harish reddy 120 
# final answer how many of variables are passed: 3
echo "how many of variables are passed: $#"



# want to know the script name
echo "script used: $0"
#output as script used: special-variables.sh

#want to know the directory 

echo "this is the current directory: $PWD"
# final answer: this is the current directory: /home/ec2-user/Git-practice

# want to know the user directory
echo " this is the user directory: $HOME"
#output this is the user directory: /home/ec2-user

# want to know the process ID of the current script

echo "this the PID number: $$"

sleep 100 &

echo PID of the latest excuted command: $!



