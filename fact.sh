echo "Enter a number which factorial you want"
read n
fact=1
for (( i=1; i<=n; i++ ))
do
fact=$((fact * i))
done
echo "Factorial of the number $n will be $fact"
