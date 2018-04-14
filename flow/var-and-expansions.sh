#!/usr/bin/env bash

# pathname expansion
# rm -v ./sth/*
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

# unset
var=10
unset var
echo $var

# read user input
read var2
echo $var2

# declare types

# read only
declare -r varr=2
# int
declare -i x
x=8/2
# func
declare -f func
func() { echo "kek" }
func
#export
declare -x varx=10

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
# 0 for user
echo $UID 
echo $GROUPS
echo $HOSTNAME
echo $HOME
echo $LINENO
echo $OSTYPE
echo $PWD
echo $OLDPWD
echo $REPLY
echo $SECONDS
echo $RANDOM
#separator IFS=<symbol>
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

# arithmetic
var5=
let "var5 += 10"

# substitution
num=${var5/10/B}
echo $var

# set - setting/unsetting shell options
set +0 history
set -0 history

#  break a single argument with multiple flags into multiple arguments each with single flag
# ./script -ab, ./script -a -b
# set -- $args