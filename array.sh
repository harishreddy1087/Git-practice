#!bin/bash

# here im writing to explain the arrys functions
FRIUTS=("APPLE" "MANGO" "KIWI")
#FRIUT="MANGO"

#echo "$FRIUT"

#echo "first friut name is: $FRIUTS"
# in arrays it will from index 0, size 3
echo "first friut name is: ${FRIUTS[0]}"
echo "2nd friut name is: ${FRIUTS[1]}"
echo "3rd friut name is: ${FRIUTS[2]}"
echo "list of all friuts are ${FRIUTS[@]}"