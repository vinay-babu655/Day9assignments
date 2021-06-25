#!/bin/bash -x

ispartTime=1;
isfullTime=2;
maxHrsinmonth=100;
emprateperHr=20;
numworkingdays=20;

totalempHrs=0;
totalworkingdays=0;

function getworkHrs() {
        case $1 in
                $isfullTime)
                        empHrs=8
                        ;;
                $ispartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        echo $empHrs;
}

function getempwage() {
        echo $(($1*$emprateperHr))
}

while [[ $totalempHrs -lt  $maxHrsinmonth && 
         $totalworkingdays -lt $numworkingdays ]]

do
        ((totalworkingdays++))
        empcheck=$((RANDOM%3));
        empHrs="$( getworkHrs $empcheck )"
        totalempHrs=$(($totalempHrs+$empHrs))
        dailywages[$totalworkingdays]=$(($empHrs*$emprateperHr))
done

totalsalary="$(getempwage $totalempHrs)"


