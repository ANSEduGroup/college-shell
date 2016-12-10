echo "Enter the basic salary:"
read a
d=$(expr $a \* 70 / 100)
echo "DA is = $d"
e=$(expr $a \* 30 / 100)
echo "HRA is = $e"
f=$(expr $a \* 10 / 100)
echo "TA is = $f"
g=$(expr $d + $e + $f + $a)
echo "Gross Salary = $g"
