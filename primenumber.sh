echo "Enter the number"
read num
flag=0
for (( i=2; i<num; i++ ))
do
   if [ $((num%i)) == 0 ]; then
    flag=1
    break
fi
   
done
if [ $flag == 1 ]; then
echo "Item is not prime"
else
echo "Item is prime"
fi
