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



