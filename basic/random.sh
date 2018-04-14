#!/usr/bin/env bash

# between 2 values
echo $(( $1 + RANDOM % $2 ))

MAX=10
i=1
while [ "$1" -le $MAX ]
do
    n=$RANDOM
    echo $n
    let "i += 1"
done