#Write a Shell Script that accepts two filenames as arguments .Check if the permissions for these files are identical and if the permissions are identical output the common permissions,otherwise output each filename followed by its permission

if [ $# -eq 2 ]
then
if [ ! -e $1 -o ! -e $2 ]
then
echo "one or more files dont exist"
else
perm1=`ls -l $1 | cut -c2-10`
perm2=`ls -l $2 | cut -c2-10`
if [ $perm1==$perm2 ]
then 
echo "File permissions are identical"
echo "File permissions are $perm1"
else
echo "File permissions are not identical"
echo "File permissions for first file are $perm1"
echo "File permissions for second file are $perm2"
fi
fi
else
echo "Not enough arguments"
fi
