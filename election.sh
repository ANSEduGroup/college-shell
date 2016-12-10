ballot()
{
b1=$1
b2=$2
b3=$3
b4=$4
b5=$5
t=$(expr $b1 + $b2 + $b3 + $b4 + $b5)
win=$(expr $t / 2)
if [ $b1 -gt $win ]
then
echo "A is winner"
elif [ $b2 -gt $win ]
then
echo "B is winner"
elif [ $b3 -gt $win ]
then
echo "C is winner"
elif [ $b4 -gt $win ]
then
echo "D is winner "
elif [ $b5 -gt $win ]
then
echo "E is winner "
else
echo "No one won"
fi
} 
echo "Enter vote of A"
read a
echo "Enter vote of B"
read b
echo "Enter vote of C"
read c
echo "Enter vote of D"
read d
echo "Enter vote of E"
read e
ballot $a $b $c $d $e