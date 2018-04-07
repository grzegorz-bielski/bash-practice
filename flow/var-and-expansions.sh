#!/usr/bin/env bash

# pathname expansion
rm -v ./sth/*
# * - anything
# ? - one single char
# [chars] - a set of chars
# [[:classname:]] - a class of chars - ex. ascii/blank/upper

# extended globs
# turn it on in current prompt
shopt -s extglob

# tilde expansion
echo 'I live in: ' ~
echo 'My boss lives in: ' ~root

# command expansion
echo 'Hello world.' > hello.txt
echo "The file <hello.txt> contains: $(cat hello.txt)"

# shell variables
name=kek
contents="$(cat hello.txt)"
time=23.73
echo "Hello, $name.  How are you?"
echo "$kek's current record is ${time}s."
echo "$name's current record is ${time%.*} seconds and ${time#*.} hundredths."
echo "PATH currently contains: ${PATH//:/, }"
echo "$greeting" > "${greeting// /_}.txt"

# env variables
export name=kek
# Each child process inherits the variables from its parent's environment.

# positional parameters
$1 $2
# expand to values that were sent into the process as arguments when it was created by the parent
 bash -c 'echo "1: $1, 2: $2, 4: $4"' -- 'New First Argument' Second Third 'Fourth Argument'

# special parameters

# string with all parameters
echo "Arguments: $*"

# list with all parameters
rm "$@"

# exit code of last command
	(( $? == 0 )) || echo "Error: $?"

# shell upid 
echo "$$" > /var/run/myscript.pid

# last argument of prev command
echo "$$" > /var/run/myscript.pid

# shell internal variables
# BASH, UID, HOME, RANDOM, PWD, MACHTYPE, PATH etc...

# arrays
files=( myscript hello.txt "05 Between Angels and Insects.ogg" )
# [@] - expand arrays into arguments
$ rm -v "${files[@]}"

# append
files+=( selfie.png )
# glob patterns
files=( *.txt )
# expand single item
$ echo "${files[0]}"
# remove item
$ unset "files[3]"