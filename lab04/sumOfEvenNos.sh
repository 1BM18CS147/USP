# Find Sum of even numbers upto n

echo "Enter a number"
read n

sum=0
i=2
while [ $i -le $n ]
do
sum=$((sum+i))
i=$((i+2))
done

echo "Sum of even numbers upto $n is $sum"
