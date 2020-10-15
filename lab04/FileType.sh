#Write a shell program accept file as command line argument and find if its an ordinary file or directory. Also display attributes

filename=$1

if [ $# -eq 1 ]
then
 if [ -d "$filename" ]
 then
 echo "Given File is a directory"
 echo "Attributes are:"
 ls -l $filename
 elif [ -f "$filename" ]
 then
 echo "Given File is an ordinary file"
 echo "Attributes are:"
 ls -l $filename
 else
 echo "Not a valid filename"
 fi

else
echo "The argument not given"
fi 
