echo "Enter marks:"
read a b c d e
s=$(expr $a + $b + $c + $d + $e)
avg=$(expr s / 5)
echo "Average marks = $avg"
if [ $avg -lt 40 ]
	then
	echo "Grade F"
elif [ $avg -le 50 -a $avg -gt 40 ]
	then
	echo "Grade D"
elif [ $avg -le 60 -a $avg -gt 50 ]
	then
	echo "Grade C"
elif [ $avg -le 70 -a $avg -gt 60 ]
	then
	echo "Grade B"
elif [ $avg -le 80 -a $avg -gt 70 ]
	then
	echo "Grade A"
elif [ $avg -le 90 -a $avg -gt 80 ]
	then
	echo "Grade E"
elif [ $avg -le 100 -a $avg -gt 90 ]
	then
	echo "Grade O"
fi