# Find Factorial of a number using Loop structure

echo "Enter a number"
read n

f=1
if [ $n -lt 0 ]
then
echo "Enter a positive number"
else
while [ $n -gt 1 ]
do
  f=$((f * n))
  n=$((n - 1))
done
echo "Factorial is $f"
fi
