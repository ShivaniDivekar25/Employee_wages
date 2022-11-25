#! /bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numberofWorkingDays=20
MaxRateInMonth=100

totalWorkingDays=0
totalsalary=0
totalEmpHr=0

while [[ $totalEmpHr -lt $MaxRateInMonth && $totalWorkingDays -lt $numberofWorkingDays ]]
do
	((totalWorkingDays++))
	random_check=$((RANDOM%3))
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
	totalEmpHr=$(($totalEmpHr + $empHr))
done
total_salary=$(($totalEmpHr*$empRatePerHr))
echo "Total salary is:"$total_salary
