#!usr/bin/env/bash

#Executing simple arithmetic operations
echo $(( 10*5+15 ))

#Assigning value to variables
val1=$(( 10*3-15 ))
echo $val1

#Arithmetic operations using constants
echo $(( val1 *= 3 ))
echo $((40/6))

#bc -l <<< "(1 + 2)/7 * 2 ^ 2"
echo "ответ:"
echo $((23*3-75/5))

arithmetic_result=$(( 15 + 8 ))
printf "%s\n" "$arithmetic_result"

arithmetic_result=$(echo "scale=2; 22 / 7" | bc -l)
printf "%s\n" "$arithmetic_result"
