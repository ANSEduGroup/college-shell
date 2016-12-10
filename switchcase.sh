echo "Enter two numbers"
read a b
choice=0
while [ $choice -ne 7 ]
do
echo "1.Add 2.Sub 3.Multiply 4.Division 5. Mod 6.Pow"
echo "Enter your choice:"
read choice
case $choice in
1)
c=$(expr $a + $b)
echo "Ans is:$c"
;;
2)
c=$(expr $a - $b)
echo "Ans is:$c"
;;
3)
c=$(expr $a \* $b)
echo "Ans is:$c"
;;
4)
c=$(expr $a / $b)
echo "Ans is:$c"
;;
5)
d=0
c=$(expr $a / $b)
f=$(expr $b \* $c)
d=$(expr $a - $f)
echo "Ans is:$d"
;;
6)
x=1
y=$a
while [ $x -lt $b ]
do
y=$(expr $y \* $a)
x=$(expr $x + 1)
done
echo "Ans = $y"
;;
esac
echo "Press 7 to exit"
done