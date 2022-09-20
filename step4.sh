#!/usr/bin/env bash 
echo "Welcome to the basic calculator!"
echo "Enter an arithmetic operation or type 'quit' to quit:"

#read eq
#re='^[-0-9]+[\.]?[-0-9]?+ [-,+,^,*,/] [-0-9]+[\.]?[-0-9]?+$'
#if [ "$eq" = "quit" ]; then
#  echo "Goodbye!"
#else 
#    if [[ $eq =~ $re ]]; then
#		arithmetic_result=$(echo 'scale=2;'"$eq" | bc -l)
#		printf "%s\n" "$arithmetic_result"
#    else
#		echo "Operation check failed!"
#    fi
#fi


read eq
re='^[-0-9]+[\.]?[-0-9]?+ [-,+,^,*,\/] [-0-9]+[\.]?[-0-9]?+$'
if [[ $eq =~ $re ]]; then
    arithmetic_result=$(echo 'scale=2;'"$eq" | bc -l)
    printf "%s\n" "$arithmetic_result"
else
    echo "Operation check failed!"
fi

#!/usr/bin/env bash 
echo "Welcome to the basic calculator!"
echo "Enter an arithmetic operation or type 'quit' to quit:"

read eq
re='^[-0-9]+[\.]?[-0-9]?+ [-,+,^,*,/] [-0-9]+[\.]?[-0-9]?+$'
if [ "$eq" = "quit" ]; then
  echo "Goodbye!"
else 
    if [[ $eq =~ $re ]]; then
		arithmetic_result=$(echo 'scale=2;'"$eq" | bc -l)
		printf "%s\n" "$arithmetic_result"
    else
		echo "Operation check failed!"
    fi
fi