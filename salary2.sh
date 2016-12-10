echo "Enter Salary"
read s
if [ $s -gt 10000 ]
	then
	echo "Enter dept:"
	read a
	if [ $a -eq 1 ]
		then
		ti=$(expr $s \* 10)
		tf=$(expr $ti / 100)
		echo "Tax = $tf"
	elif [ $a -eq 2 ]
		then
		ti=$(expr $s \* 8)
		tf=$(expr $e / 100)
		echo "Tax = $tf"
	fi
elif [ $s -lt 10000 ]
	then
	echo "Enter Dept:"
	read b
	if [ $b -eq 1 ]
		then
		ti=$(expr $s \* 6)
		tf=$(expr $ti / 100)
		echo "Tax = $tf"
	elif [ $b -eq 2 ]
		then
		ti=$(expr $s \* 4)
		tf=$(expr $ti / 100)
		echo "Tax == $tf"
	fi
fi