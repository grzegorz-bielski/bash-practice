#!/usr/bin/env bash

# arrays
arr[0]=20

declare -a arr2
arr2=( 10, 20, 30)
echo -e "${arr[0]} \n"

arr3=something
echo ${arr3[*]}
echo ${arr3[0]}
echo ${arr3[1]}
# arr size
echo ${#arr3[@]}

arr4=( sth sthh )
# length of 1st elem
echo ${#arr[0]}

files=( myscript hello.txt "05 Between Angels and Insects.ogg" )
# [@] - expand arrays into arguments
# $ rm -v "${files[@]}"
# append
files+=( selfie.png )
# glob patterns
files=( *.txt )
# expand single item
$ echo "${files[0]}"
# remove item
$ unset "files[3]"


declare -a colors

echo "Colors separated by space: "
read -a colors

count=${#colors[@]}

i=0
while [[ "$i" -lt "$count" ]]
do
    echo ${colors[$i]}
    (( i++ ))
done

echo ${colors[*]}
unset colors
echo ${colors[*]}

