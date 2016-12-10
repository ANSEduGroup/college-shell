factorial()
{
    s=$1
    f=1
    while [ $s -ne 0 ]
    do
    f=$(expr $f \* $s)
    s=$(expr $s - 1)
    done
    echo "Factorial is $f"
}
echo "Enter a number"
read a
factorial $a
reverse()
{
    p=$1
    echo $p|rev
}
echo "Enter string "
read x
reverse $x