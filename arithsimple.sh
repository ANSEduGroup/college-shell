read a b
c=$(expr $a + $b)
echo "Addition = $c"
d=$(expr $a - $b)
echo "Subtraction = $d"
e=$(expr $a \* $b)
echo "Multiplication = $e"
f=$(expr $a / $b)
echo "Division = $f"
g=$(expr $a % $b)
echo "Modulus = $g"