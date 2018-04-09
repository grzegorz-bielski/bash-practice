#!/usr/bin/env bash

folder='./downloads'
regex='i.4cdn.org/[a-zA-Z]*/[1-9]*.jpg'
mkdir -p $folder

curl -vs $1 2>&1 | grep -oh -P $regex | sort -u | wget -i- -nv -P $folder