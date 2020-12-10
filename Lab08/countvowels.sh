#Write a shell script to count the number of vowels in a file using tr command
echo "Enter filename"
read fname
echo "Number of vowels are `tr -dc '[aeiouAEIOU]' < $fname | wc -c`"



