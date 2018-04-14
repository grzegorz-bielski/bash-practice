#!/usr/bin/env bash

# Commands
# [ var=value ... ] name [ arg ... ] [ redirection ... ]

# Pipelines
# Pipe is used to pass output to another __program or utility__.
# connecting two commands by linking first command stdout to second command stdin
# [time [-p]] [ ! ] command [ [|||&] command2 ... ]

# Lists
# command control-operator [ command2 control-operator ... ]
# ; - run command and wait before advaving to next line
# || - run next command if previous failed

# Compound commands
# if list [ ;|<newline> ] then list [ ;|<newline> ] fi
# { list ; }

if ! rm hello.txt; then echo "Couldn't delete hello.txt." >&2; exit 1; fi
rm hello.txt || { 
    echo "Couldn't delete hello.txt." >&2; exit 1; 
}

sleep 1

# Coprocesses
# for running command asynchronously
#  coproc [ name ] command [ redirection ... ]

coproc auth { 
    tail -n1 -f /var/log/auth.log; 
}
read latestAuth <&"${auth[0]}"
echo "Latest authentication attempt: $latestAuth"

# Functions
# name () compound-command [ redirection ]

exists() { 
    [[ -x $(type -P "$1" 2>/dev/null) ]]; 
}
exists gpg || echo "Please install GPG." <&2

# Literals
echo 'ayy lmao'
echo "Hello $USER"

# ps in the backgorund
jobs
sleep 5 &
jobs

# bring background running command to foreground
fg 1

wait
times
