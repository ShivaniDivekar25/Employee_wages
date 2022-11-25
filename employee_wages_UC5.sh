#! /bin/bash -x
isPartTime=1
isFullTime=2
totalsalary=0
empRatePerHr=20
numberofWorkingDays=20

for((day=1: day<=$numberofWorkingDays: day++))
do
   random_check=$((RANDOM%3))
   case $random_check in
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
   esac
   salary=$(( $empRatePerHr*$empHrs ))
   totalsalary=$(( $totalsalary+$salary ))
done

echo "Total monthly wages of an employee is:"$totalsalary
