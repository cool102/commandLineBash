#!/usr/bin/env bash 
echo "Welcome to the basic calculator!"
echo "Welcome to the basic calculator!" >> operation_history.txt
while true
do 
echo "Enter an arithmetic operation or type 'quit' to quit:"
echo "Enter an arithmetic operation or type 'quit' to quit:" >> operation_history.txt
read -r eq >> operation_history.txt
echo "$eq" >> operation_history.txt
re='^[-0-9]+(\.[0-9]+)* [-,+,*,/,^] [-0-9\]+(\.[0-9]+)*$'
if [ "$eq" = "quit" ]; then
    echo "Goodbye!" 
    echo "Goodbye!" >> operation_history.txt
    break
else
	if [[ "$eq" =~ $re ]]; then
	echo $eq
		arithmetic_result=$(echo 'scale=2;'"$eq" | bc -l)
		printf "%s\n" "$arithmetic_result"
		printf "%s\n" "$arithmetic_result" >> operation_history.txt
    else 
		echo "Operation check failed!" >> operation_history.txt
	fi
    
fi
done