echo "enter the temperature"
read a
c=$(expr $a - 32)
d=$(expr $c \* 5)
e=$(expr $d / 9)
echo "Celsius = $e"
f=$(expr $e \* 9)
g=$(expr $f / 5)
h=$(expr $g + 32)
echo "farenheit = $h"