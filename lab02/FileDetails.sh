echo "Enter file Name"
read FileName
lines=$(cat $FileName|wc -l)
echo "File attributes of $FileName"
ls -l $FileName
echo "File contents of $FileName"
cat $FileName
echo "Word Count is"
wc -w < $FileName
