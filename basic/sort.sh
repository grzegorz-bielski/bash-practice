#!/usr/bin/env bash

# bubble sort 

declare -a items

items=(white green red blue)
size=${#items[@]}

swap() {
    local temp=${items[$1]}
    items[$1]=${items[$2]}
    items[$2]=$temp
    return
}

for (( last = $size -1 ; last > 0; last-- ))
do
    for (( i = 0; i < last; i++ ))
    do
        [[ "${items[$1]}" > "${items[$(( i+1 ))]}" ]] && swap $i $(( i+1 ))
    done
done

echo ${items[@]}