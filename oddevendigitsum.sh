echo "Enter number"
read n
rev=0
os=0
es=0
c=1
while [ $n -gt 0 ]
do
dig=$(expr $n % 10)
rev=$(expr $(expr $rev \* 10) + $dig)
n=$(expr $n / 10)
done
n=$rev
while [ $n -gt 0 ]
do
dig=$(expr $n % 10)
if [ $(expr $c % 2) -eq 0 ]
then
es=$(expr $es + $dig)
else
os=$(expr $os + $dig)
fi
n=$(expr $n / 10)
c=$(expr $c + 1)
done
echo "odd sum=$os"
echo "Even sum=$es"