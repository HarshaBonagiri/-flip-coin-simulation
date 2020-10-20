
#! /bin/bash

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

     #Check for whether it's a tie or not,if tie then continue the loop
    if [[ $countHead -eq $countTail ]]
    then
        continue
    fi

    #breaking the loop if any of their count is 21
    if [[ $countHead -eq 21 || $countTail -eq 21 ]]
    then
        break
    fi
done

echo "Head Count : $countHead"
echo "Tail Count : $countTail"


if [[ $countHead -ge $countTail ]]
then
    HeadPercentage=`echo "scale=2; $countHead/33*100" | bc`
    echo "Heads winning percentage : $HeadPercentage %"
elif [[ $countHead -eq $countTail ]]
then    
    echo "Heads and Tail there is a tie."
else
    TailPercentage=`echo "scale=2; $countTail/33*100" | bc`
    echo "Tail Winning percentage : $TailPercentage %"
fi 
