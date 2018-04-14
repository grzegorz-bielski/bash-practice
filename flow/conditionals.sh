#!/usr/bin/env bash

# make it executable
# chmod +x hello.txt
# run
# ./name.sh

read -p "Your name? " name
if [[ $name = $USER ]]; then
echo "Hello, me."
else
echo "Hello, $name."
fi

# is specifed
if [[ -n "$1" ]]
then
    echo "$1 is specified"
fi

# exists
file=/home/ayy.txt
if [[ -e $var ]]
then
    echo "exists"

# -f -> file, -s -> non 0 size, -r -> user has permission for reading, -x -> -//- exec, -w -> -//- write

# exists and is readable
if [[ ! -r "$1" || ! -r "$2"]]
then
    echo "unreadable"
    exit 86
fi

echo -n "Enter a letter or a digit: "
read a

# case
case "$a" in
 [[:lower]] ) echo "$a is a lowerscase letter";;
 [[:upper]] ) echo "$a is an uppercase letter";;
 [0-9]      ) echo "$a is a digit";;
 *          ) echo "$ais special char";;
esac


# custom prompt
PS3='Pick a color:'

select color in "brown" "grey" "black" "orange" "red"
do 
    echo "You selected this color: $color"
    break
done

# checks if it has it's zero value
if [[ ! -z $1 ]]
then
    process="ps -e | grep $1"
fi
eval $process





