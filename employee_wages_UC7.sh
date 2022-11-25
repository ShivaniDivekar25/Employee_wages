#! /bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numberofWorkingDays=20
MaxRateInMonth=100

totalWorkingDays=0
totalsalary=0
totalEmpHr=0

function getWorkingHour()
{
	case $1 in
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
while [[ $totalEmpHr -lt $MaxRateInMonth && $totalWorkingDays -lt $numberofWorkingDays ]]
do
        ((totalWorkingDays++))
        random_check=$((RANDOM%3))
	getWorkingHour $((RANDOM%3))
        totalEmpHr=$(($totalEmpHr+$empRatePerHr))
done
total_salary=$(($totalEmpHr*$empRatePerHr))
echo "Total salary is:"$total_salary
