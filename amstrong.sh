echo "Enter a number "
read n
t=$n
sum=0
while [ $n -gt 0 ];
do
r=$((n % 10))
s=$((r * r * r))
sum=$((sum + s))
n=$((n / 10))
done
if [ $t == $sum ]; then
  echo "Number is Amstrong"
else
echo "Number is not Amstrong"
fi
