echo "Enter the Principal Amount"
read p
echo "Enter the Rate of Interest"
read r
echo "Enter the Number of Years"
read n
si=$(expr $p \* $r \* $n)
si=$(expr $si / 100)
echo "The Simple Interest is: Rs $si"
co=$(expr 100 + $r)
co=$(expr $co / 100)
i=0
ci=0
while [ $i -lt $n ]
do
si=$(expr $p \* $r)
si=$(expr $si / 100)
p=$(expr $p + $si)
ci=$(expr $ci + $si)
i=$(expr $i + 1)
done
echo "The Compound Interest is: Rs $ci"

# root@kali-linux:~$ sh simp.sh
# Enter the Principal Amount
# 5000
# Enter the Rate of Interest
# 10
# Enter the Number of Years
# 1
# The Simple Interest is: Rs 500
# The Compound Interest is: Rs 610