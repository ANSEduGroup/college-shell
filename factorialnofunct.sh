echo "Enter number:"
read fact
f=1
c=0
while [ $fact -ne $c ]
do
c=$(expr $c + 1)
f=$(expr $f * $c)
done
echo "Factorial is:$f"