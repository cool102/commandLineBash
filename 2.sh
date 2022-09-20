

solve() {
if [[ !-e $1 ]]; then
   echo "File does not exist"
fi   
elif [[ -e $1 ]]; then
   if [[ !-s $1 ]]; then
       echo "File exists but is empty"
    else 
    echo "File exists and is not empty"
	fi
fi
}
solve $1

