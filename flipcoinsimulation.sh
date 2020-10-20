#!/bin/bash

Head=1
Tail=0

randomCheck=$((RANDOM%2))

if [[ $randomCheck -eq $Head ]]
then
    echo "Head is Winner"
else
    echo "Tail is winner"
fi
