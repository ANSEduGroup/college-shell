echo "Enter a number"
read n
c=0
b=$n
while [ $b -gt 0 ]
do
c=$(expr $c + 1)
b=$(expr $b / 10)
done
b=$n
sum=0
x=0
while [ $b -gt 0 ]
do
a=$(expr $b % 10)
x=`echo $a^$c|bc`
sum=$(expr $sum + $x)
b=$(expr $b / 10)
c=$(expr $c - 1)
done
if [ $n -eq $sum ]
then
echo "Weakarm no."
else
echo "Not weakarm no."
fi