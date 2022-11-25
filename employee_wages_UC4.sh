#! /bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
random_check=$((RANDOM%3))

case $random_check in
			$isFullTime )
				empHr=8
			;;
			$isPartTime )
				empHr=4
			;;
			*)
				empHr=0
			;;
esac
salary=$(( $empHrs*$empRatePerHr ))
echo $salary

