#! /bin/sh

echo "Please enter your password: "
read password

len=${#password}

echo "Password length: $len (minimum 8)"
continue=0

if [ $len -ge 8 ]
then
	echo -e  "- valid '\n'"
	(( continue = 1 ))
else
	echo -e "- invalid \n"
fi


if [[ `echo $password | grep -c [0-9]` -eq 0 ]]
then
	echo -e "Needs numbers -invalid \n"
	(( continue = 0 ))
else 
	(( continue = 1 ))
	echo -e "Password contains numbers - valid \n"
fi

if [[ `echo $password | grep -c [a-z]` -eq 0 ]]
then
	echo "Needs lowercase - invalid"
	(( continue = 0 ))
else 
	(( continue = 1 ))
	 echo "Password contains lowercase - valid"
fi

if [[ `echo $password | grep -c [A-Z]` -eq 0 ]]
then
        echo -e "Needs uppercase - invalid \n"
	(( continue = 0 ))
else
        (( continue = 1 ))
         echo -e "Password contains Uppercase - valid \n"
fi

if [[ $continue -eq 0  ]]
then
	echo -e "Password is invalid altogetner"
fi
