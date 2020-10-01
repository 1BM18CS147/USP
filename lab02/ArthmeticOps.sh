#!/bin/sh

echo "Enter the first number"
read x
echo "Enter the second number"
read y

sum=`expr $x + $y`
diff=`expr $x - $y`
prod=`expr $x \* $y`
quo=`expr $x / $y`
rem=`expr $x % $y`

echo "Sum is:$sum"
echo "Difference is:$diff"
echo "Product is:$prod"
echo "Quotient is:$quo"
echo "Remainder is:$rem"
