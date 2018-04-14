#!/usr/bin/env bash
trap 'echo "Listening vars: m=$m n=$n o=$n"' EXIT

m=1
n=2
o=3

let "sum= $m+$n+$n"

echo "sum: $sum"