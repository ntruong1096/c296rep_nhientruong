#! /bin/sh


touch lottery_num

for i in {1..5}
do
	rfifty=$(( $RANDOM % 50 + 1 ))
	echo $rfifty>>lottery_num
done

rten=$(( $RANDOM % 10 + 1 ))
echo $rten>>lottery_num

mv lottery_num lottery_num.`date +%Y.%m.%d`
echo "Lottery Ticket created"
