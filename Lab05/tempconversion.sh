#Write a shell script to convert temperature given in Farenheit to Temperature in celsius

echo "Enter a temperature in Farenheit"
read Tf

Tc=`echo "($Tf-32)*5/9"|bc`

echo "Temperature in celsius is $Tc"
