echo "Enter three numbers:"
read a b c
if [ $a -gt $b -a $a -gt $c ]
then
	d=$a
elif [ $b -gt $c -a $b -gt $a ]
then
	d=$b
else
	d=$c
fi
echo "Largest number is $d"