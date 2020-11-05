#Write a Shell Script Arithmetic Operations on a set of two numbers using case expression


echo "Enter two numbers"
read n1 n2
echo "Enter an operator(+,-,/,x,%)"
read op

ans=0
case $op in
+) 
ans=`expr $n1 + $n2` 
;;
-)
ans=`expr $n1 - $n2` 
;;
/)
ans=`expr $n1 / $n2` 
;;
x)
ans=`expr $n1 \* $n2` 
;;
%)
ans=`expr $n1 % $n2` 
;;
*)
echo "Wrong operator entered"
exit 0
;;
esac

echo "The answer is $ans"
