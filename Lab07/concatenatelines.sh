#Write a Shell Script to concatenate the n1-n5 lines of File1 and n8-n15 Lines of File2 to file3 using proper filter command of head and tail.


echo "Enter 3 filenames"
read f1 f2 f3

echo "Contents of file3 now are \n"

head -n 5 $f1 >> $f3
tail -n +8 $f2 | head -n 8 >>$f3

cat $f3
