#!/bin/bash -x

isfullTime=1;
ispartTime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

        case $randomcheck in
                $isfullTime)
                        emphrs=8
                        ;;
                $ispartTime)
                        emphrs=4
                        ;;
                *)
                        emphrs=0
                        ;;

        esac
