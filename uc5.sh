#!/bin/bash -x

#read -p "Enter the no.of workingdays of an emp per month: " x;
ispresent=1;
emprateperhr=20;
emphrsperday=8;
workingdays=20;

function getempwageperday() {
	echo $(($emprateperhr*$emphrsperday))
}

salary= "$((getempwageperday)*$workingdays)"
echo $salary
