#!/usr/bin/env bash

dictPatterns() {
    E_NOPATTERN=71
    DICT=/usr/share/dict/words

    if [[ -z "$1" ]]
    then
        echo
        echo "Usage:"
        echo "`basename $0` \"pattern,\""
        echo "where \"pattern\" is in the form"
        echo "Periods are missing letters"
        echo "o..0,o..oo.o"
        echo "O's"
        exit $E_NOPATTERN
    fi

    grep ^"$1"$ "$DICT"
}

sedPatterns() {
    E_BADARGS=65

    if [[ $# -eq 0 ]]
    then
        echo "Usage: `basename $0` file"
        exit $E_BADARGS
    else
        for i # it wiell loop through file by default
        do
            sed -e '1,/^$/d' -e '/^$/d' $i
        done
    fi
}

# ? - single letter
# [fw]* - all files beginning with f or w
# [e-q]* - alphabetic range
# {w*, *oo*} - files starting with w and those having 'oo'

globbing() {
    for file in *
    do
        ls -la "file"
        shopt -s nullglob
    done
}

# dictPatterns $1