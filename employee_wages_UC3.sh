#! /bin/bash -x

ispresent=1
isfulltime=2
empRatePerHr=20
random_check=$((RANDOM%3))

if [$isfulltime -eq $random_check]
then
empHrs=8
echo "Employee is present and doing fulltime"
elif [$ispresent -eq $random_check]
then
empHrs=4
echo "Employee is present and doing Parttime"
else
empHrs=0
echo "Employee is absent"
fi
