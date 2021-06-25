#!/bin/bash -x

ispresent=1;
randomcheck=$((RONDOM));
if [ $ispresent -eq $randomcheck ];
then
        echo "emp is present";
else 
        echo "emp is absent";
fi
