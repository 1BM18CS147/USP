
if test $# -eq 2
then
echo ""
if test -f $1
then 
echo "Attributes of 1st file are:"
ls -l $1
else
echo "$1 is not a file name"
fi
if test -f $2
then 
echo "Attributes of 1st file are:"
ls -l $2
else
echo "$2 is not a file name"
fi

else
echo "Two arguments are not given"
fi
