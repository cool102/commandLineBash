echo "Enter an arithmetic operation:"
read var1 oper var2
# echo $var1
# echo $oper
# echo $var2
 

regOpe='(^\+{1}$)|(^\-{1}$)|(^\*{1}$)|(^\/{1}$)'
regInt='^(\-|\+)?[0-9]+$'

if [[ $var1 =~ $regInt ]] && [[ $var2 =~ $regInt ]] && [[ $oper =~ $regOpe ]]; then
	echo $(( $var1 "$oper" $var2 ))
	
else 
	echo "Operation check failed!"
fi


#if [[ ${line[0]} =~ $regInt ]]; then 
#	echo "is integer"
#	echo ${line[0]}
#else
#echo "not integer"
#	echo ${line[0]}
#fi