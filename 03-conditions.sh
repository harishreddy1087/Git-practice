#!/bin/bash

# here im learning the comndition statements

NUMBER=$1

if [ $NUMBER -gt 25] 
# -gt, -lt, -ne, -ge, -le, -eq

then
    echo "given number: $NUMBER is greater than 25"
else
    echo "given number: $NUMBER is lessthan 25"
fi