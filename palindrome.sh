echo "Enter a number"
read a
b=$a
rev=0
while [ $a -ne 0 ]
do
	d=$(expr $a % 10)
	a=$(expr $a / 10)
	rev=$(expr $(expr $rev \* 10) + $d)
done
echo "Reversed number is = $rev"
if [ $b -eq $rev ]
	then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi