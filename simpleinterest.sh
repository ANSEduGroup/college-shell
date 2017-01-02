echo "Enter principal amount:"
read a
echo "Enter rate of interest:"
read r
echo "Enter no of years:"
read t
i=$(expr 1)
while [ $i -le $a ]
do
	i=$(expr $a \* $r \* $t)
	e=$(expr $i / 100)
	am=$(expr $e + $a)
done
c=$(expr $am - $a)
echo "Interest = $c"