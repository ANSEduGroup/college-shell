echo "Enter the year:"
read a
c=$(expr $a % 4)
d=$(expr $a % 400)
e=$(expr $a % 100)
if [ $c -eq 0 ] 
then
	echo "Leap Year"
elif [ $e -ne 0 -a $c -eq 0 ]
then
	echo "Leap Year"
else
	echo "Not a leap year"
fi