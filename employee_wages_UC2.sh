#1 /bin/bash -x

ispresent=1
random_check=$((RANDOM%2))

empRatePerHr=20
empHrs=8

if [ $ispresent -eq $random_check ]
then
    salary=$(( $empRatePerHr*$empHrs ))
    echo "The salary/wages is: "$salary
else
    salary=0
    echo "The salary/wages is: "$salary
fi

