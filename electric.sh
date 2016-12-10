echo "Enter units:"
read u
if [ $u -le 30 ]
	then
	p=$(expr $u \* 5)
elif [ $u -le 50 -a $u -gt 30 ]
	then
	u=$(expr $u - 30)
	p=$(expr $u \* 6)
	p=$(expr $p + 150)
elif [ $u -le 60 -a $u -gt 50 ]
	then
	u=$(expr $u - 50)
	p=$(expr $u \* 7)
	p=$(expr $p + 150 + 120)
elif [ $u -le 80 -a $u -gt 60 ]
	then
	u=$(expr $u - 60)
	p=$(expr $u \* 8)
	p=$(expr $p + 150 + 120 + 70)
elif [ $u -le 90 -a $u -gt 80 ]
	then
	u=$(expr $u - 80)
	p=$(expr $u \* 9)
	p=$(expr $p + 150 + 120 + 70 + 160)
elif [ $u -gt 90 ]
	then
	u=$(expr $u - 90)
	p=$(expr $u \* 10)
	p=$(expr $p + 150 + 120 + 70 + 160 + 90)
fi
echo "Total Bill = $p"