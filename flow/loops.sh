#!/usr/bin/env bash

for i in {0..4}
do
    echo "${x[$i]}"
    let "i+= 1"
done

# only final condition determines termination condition
a=unset
prev=$a

while   echo "Prev = $prev"
        prev=$a
        [[ "$a" != end ]]
do
    echo "Type 'leave' to leave"
    read a
    echo "$a"
done

until [[ "$n" = end ]]
do
    echo "Type 'leave' to leave"
    read n
    echo "$n"
done

echo "Read"
while read var
do
    echo "$var"
done < wood.txt