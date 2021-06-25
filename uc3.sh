#!/bin/bash -x

isfullTime=1;
ispartTime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));
if [ $isfullTime -eq  $randomcheck ];
then
                emphrs=8;
        echo "emp is fulltime"
elif [ $ispartTime -eq $randomcheck ];
then
                emphrs=4;
        echo "emp is partTime"
else
                emphrs=0;
        echo "emp is absent"
fi

salary=$(($emprateperhr * $emphrs ))
