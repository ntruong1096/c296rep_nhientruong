#! /bin/sh

lottery=lottery_num.2022.10.21
match_count=0
declare -a input_array
for i in {1..6}
do
	echo Enter number \#$i:
	read input_num
	input_array+=($input_num)
done

j=0
while read line;
do
	echo comparing ${input_array[j]} with $line
	if (( ${input_array[j]}==$line ))
	then
		((match_count++))
	fi
	((j++))
done < $lottery

echo number of matches: $match_count/6

if (( match_count==6 ))
then
	echo "You won the lottery"
else
	echo "You did not win the lottery"
fi
