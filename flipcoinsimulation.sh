#!/bin/bash

Head=1
Tail=0
countHead=0
countTail=0

for (( i=0 ; i<33 ; i++ ))
do
    randomCheck=$((RANDOM%2))
    if [[ $randomCheck -eq $Head ]]
    then
        echo "Head is Winner"
        ((countHead++))
    else
        echo "Tail is winner"
        ((countTail++))
    fi
done

echo "Head Count : $countHead"
echo "Tail COunt : $countTail"
