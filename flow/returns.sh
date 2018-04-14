#!/usr/bin/env bash

# holds last exit params executed in the function
echo $?

# name of this script
echo $0

# compare files byte by byte
cmp $1 $2 &> /dev/null
if [[ $? -eq 0 ]]
then
    echo "last command executed without failure"
    exit 0

(( 2 > 1 ))
# true -> 0
echo "Exit status is $?"

(( 2 < 1 ))
# false -> 1 (non 0)
echo "Exit status is $?"