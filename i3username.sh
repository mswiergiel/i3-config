#!/bin/bash

i3status | while :
do
    read line
    user=`whoami`
    echo "whoami: $user | $line" || exit 1
done
