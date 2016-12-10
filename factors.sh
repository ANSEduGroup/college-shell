echo "Enter a number:"
read a
echo "Factors are:"
i=$(expr 1)
while [ $i -le $a ]
do
	b=$(expr $a % $i)
	if [ $b -eq 0 ]
		then
		echo "$i"
	fi
	i=$(expr $i + 1)
done