#write a shell program to find power of a number

ans=1
c=0
echo "Enter a number:"
read num
echo "Enter the power:"
read pow
while [ $c -lt $pow ]
do
	ans=`expr $ans \* $num`
	c=`expr $c + 1`
done
echo "$num to the power $pow is: $ans"


