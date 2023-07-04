echo "Enter first number"
read n1
echo "Enter second number"
read n2
echo "Enter third number"
read n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]; then
  echo "greatest number is $n1"
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]; then
  echo "greatest number is $n2"
else
  echo "greatest number is $n3"
fi
