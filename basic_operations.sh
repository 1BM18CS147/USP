#!/bin/sh

echo "Enter the first number"
read x
echo "Enter the second number"
read y

sum=`echo $x+$y|bc`
diff=`echo $x-$y|bc`
prod=`echo $x\*$y|bc`
quo=`echo $x/$y|bc`
rem=`echo $x%$y|bc`
echo "Sum is:$sum"
echo "Difference is:$diff"
echo "Product is:$prod"
echo "Quotient is:$quo"
echo "Remainder is:$rem"
