echo "Enter Original File Name"
read orgFileName
echo "Enter Destination FileName"
read destFileName
cp $destFileName $orgFileName
echo "Content Sucessfully copied"
echo "Enter a new name for originalFile"
read newFile

mv -v $orgFileName $newFile
