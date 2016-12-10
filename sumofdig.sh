echo "Enter a number:"
read n
while [ $n -gt 0 ]
do
	rem=$(expr $n % 10)
	n=$(expr $n / 10)
	sum=$(expr $sum + $rem)
done
echo "Sum = $sum"