#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numberofWorkingDays=20
MaxRateInMonth=100

totalWorkingDays=0
totalsalary=0
totalEmpHr=0
declare -A dailywages

function getWorkingHour()
{
        case $random_check in
                        $isPartTime )
                                empHr=4
                        ;;
                        $isFullTime )
                                empHr=8
                        ;;
                        *)
                                empHr=0
                        ;;
        esac
}

function getEmpWages()
{
        echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $MaxRateInMonth && $totalWorkingDays -lt $numberofWorkingDays ]]
do
        ((totalWorkingDays++))
        random_check=$((RANDOM%3))
        getWorkingHour $random_check
        totalEmpHr=$(($totalEmpHr+$empHr))
        dailywages[$totalWorkingdays]=$(($emphrs*$empRatePerHr))
done
totalsalary="$(getEmpWages $totalEmpHr)"
echo ${dailywagwes[@]}
echo ${!dailywages[@]}
echo ${#dailywages[@]}

