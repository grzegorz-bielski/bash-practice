#!/bin/bash

echo "Ay"; echo $(( 2#111 ))
var=10

if [[ "$var" -gt 0 ]]; then echo "YES"; else echo "NO"; fi

colors="green red yellow"
for col in $colors
do
	echo $col
done

let "y=((x=20, 10/2))"
let val=500/2
echo $val
# return only last thing after coma
echo $y

var2=DsLConEcctiO

# to lowercase
echo ${var2,,}
# to uppercase
echo ${var2^}

# get info about ls's -U
ls --help | grep "\-U"

# do nothing
if [[ "$var" -lt 15 ]]; then :; else echo $var; fi

# empty file
touch filename.sth
echo "some text" > filename.sth
: > filename.sth

# home dir, prev/next
echo ~
echo ~-
echo ~+

# ternary operator
var3=10
echo $(( var2 = var1<20?1:2 ))

# sub shells, diffirent scopes
var4=5
(var4=10;)
echo $var4

# code block, same scope
{ 
	var4=5 
}

# prefix/sufix in strings
echo \${test1,test2,test3}\$

# multiple files into one
cat {fileOne,FileTwo} > fileCombined

# range
echo {0..9}

# anonymous func

