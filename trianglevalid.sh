echo "Enter three sides of a triangle:"
read a b c
d=$(expr $a + $b)
e=$(expr $b + $c)
f=$(expr $c + $a)
if [ $d -gt $c -a $e -gt $a -a $f -gt $b ]
	then
	echo "Triangle is valid."
else
	echo "Triangle is not valid."
fi