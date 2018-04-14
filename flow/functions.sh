#!/usr/bin/env bash

E_PARAM_ERR=250
E_BADARGS=85

EQUAL=251
FILE=/etc/passwd

someFunc() {
    echo "$FUNCNAME"
    someFuncTwo
}

someFuncTwo() { echo "kek"; echo "kek2"; }

max() {
    if [[ -z "$2" ]]
    then
        return $E_PARAM_ERR
    fi

    if [ "$1" -eq "$2" ]
    then
        return $EQUAL
    else
        if [[ "$1" -gt "$2" ]]
        then
            return $1
        else
            return $2
        fi
    fi
}

getRealName() {
    if [[ $# -ne "$ARGS" ]]
    then
        echo "Usage: `basename $0` USERNAME"
        exit $E_BADARGS
    fi

    # scan file for pattern
    while read line
    do
        echo "$line" | grep $1 | awk -F":" '{ print $5 }'
    done
} <$FILE

someFunc
max 12 13 100
maxValue = $?