#! /bin/sh

declare -a num_Array

number_provided=0
while true
do
	if [ `echo ${#num_Array[@]}` -eq 10 ]
	then
		break
	fi

	if [[ `echo ${#num_Array[@]}` -gt 4 && `echo ${#num_Array[@]}` -lt 10 ]]
	then
		echo "Do you want to stop? (Type exit - enter)"
	fi

	read input

	if [[ $input == 'exit' ]]
	then
		break
	fi

	num_Array+=($input)
	echo "List of numbers as of now: ${num_Array[@]}"
	echo "We have `echo ${#num_Array[@]}` numbers in the list"
done

total_Sum=0
product=1
min=0
max=0

for i in ${num_Array[@]}
do
	let total_Sum+=($i)
	
	let product*=$i
	if [[ $i -ge max  ]]
	then
		((max=$i))
	fi

	if [[ $i -le min  ]]
        then
		((min=$i))
        fi
done

echo "Sum: $total_Sum"
echo "Product: $product"
echo "Max: $max"
echo "Min: $min"
(( average=($total_Sum)/`echo ${#num_Array[@]}` ))
echo "Average: $average"

