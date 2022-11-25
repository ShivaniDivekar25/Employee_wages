#! /bin/bash -x
ispresent=1
random_check=$((RANDOM%2))
if (($ispresent==random_check))
then
    echo "Employee is present"
else
    echo "Employee is absent"
fi
