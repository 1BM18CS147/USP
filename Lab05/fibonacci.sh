#Write a shell script to find Fibonacci series upto N using while construct
echo "Enter value of N"
read N


a=0
b=1



if [ $N -le 0 ]
then 
echo "Enter a positive number"
else
echo "The fibonacci series is:"
while [ $N -gt 0 ]
do
  echo "$a"
  nextnum=`expr $a + $b`
  a=$b
  b=$nextnum
  N=`expr $N - 1`
done
fi
