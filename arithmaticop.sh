add()
{
    d=$(expr $1 + $2)
    echo "Addition is $d"
}
sub()
{
    e=$(expr $1 - $2)
    echo "Subtraction is $e"
}
mult()
{
    f=$(expr $1 \* $2)
    echo "Multiplication is $f"
}
div()
{
    g=$(expr $1 / $2)
    echo "Division is $g"
}
mod()
{
    h=0
    t=$(expr $1 / $2)
    u=$(expr $t \* $2)
    h=$(expr $1 - $u)
    echo "Modulus is $h"
}
power()
{
    x=1
    y=$1
    while [ $x -lt $2 ]
    do
    y=$(expr $y \* $1)
    x=$(expr $x + 1)
    done
    echo "Power value is $y"
}
echo "Enter two numbers"
read a b
add $a $b
echo "Enter two numbers"
read a1 b1
sub $a1 $b1
echo "Enter two numbers"
read a2 b2
mult $a2 $b2
echo "Enter two numbers"
read a3 b3
div $a3 $b3
echo "Enter two numbers"
read a4 b4
mod $a4 $b4
echo "Enter two numbers"
read a5 b5
power $a5 $b5
