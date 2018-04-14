#!/usr/bin/env bash

# phrase argumest passed through command line
while getops :dm option
do
    case $option in
        d) d_option=1
        ;;
        m) m_option=1
        ;;
        *) echo "Usage: -dm"
    esac
done

day=`date | awk '{print $1 " " $2}'`
if [[ ! -z $d_option ]]
then
    echo "Date is: $day"
fi

month=`date | awk '{print $3}'`
if [[ ! -z $m_option ]]
then
    echo "Month is: $month"
fi

# get next parametr after hyphen-param
shift $(($OPTIND - 1))
