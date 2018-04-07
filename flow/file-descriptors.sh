#!/usr/bin/env bash

# FD0 - stdin
# FD1 - stdout
# FD2 - stderr

# Redirect is used to pass output to either a __file or stream__.
# FD - file descriptor
# Redirected FD 1 (stdout) to myfiles.ls and FD 2 (stderr)
ls -l >myfiles.ls 2>/dev/null
# Stream duplication - for sending multiple bytes to the same stream
# 2>&1 Send FD2 to the stream that FD1 is connected to
ls -l a b >myfiles.ls 2>&1

echo Hello >~/world

# redirect stdin
cat <~/world

# append file redirection
echo World >>~/world

# short for >results 2>&1
ping 127.0.0.1 &>results

# Here documents
cat <<.
Hello world.
Since I started learning bash, you suddenly seem so much bigger than you were before.
.
# Here strings
cat <<<"Ayy lmao"

# Closing file descriptors
exec 3>&1 >mylog; echo moo; exec 1>&3 3>&-
# Moving file descriptors
# short for 1>&3 3>&-
exec 3>&1- >mylog; echo moo; exec >&3-

# opening FD for both reading and writing to file
exec 5<>/dev/tcp/ifconfig.me/80
echo "GET /ip HTTP/1.1 
Host: ifconfig.me " >&5
cat <&5