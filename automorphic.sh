echo "Enter a number"
read n
b=$n
x=$(expr $b \* $b)
c=0
while [ $b -gt 0 ]
do
c=$(expr $c + 1)
b=$(expr $b / 10)
done
y=`echo 10^$c|bc`
z=$(expr $x % $y)
if [ $z -eq $n ]
then
echo "Automorphic number"
else
echo "Not Automorphic number"
fi