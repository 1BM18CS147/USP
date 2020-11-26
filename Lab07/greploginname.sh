# Write a Shell Script that accepts valid login names as arguments and print their corresponding home directories using grep command (use  /etc/passwd to search Login name).

if [ $# -eq 0 ]
then
	echo "argument not given"

else
for n in $*
do
	loginname=`grep "$n" /etc/passwd | cut -d ":" -f 1`
	if [ -n $loginname ]
	then
		if [ "$loginname" = "$n" ]
		then
			echo "Home directory of $n is"
			hdir=`grep "$n" /etc/passwd | cut -d ":" -f 6`
			echo $hdir
		else
			echo "Incorrect LoginName"
		fi
	fi
done
fi
