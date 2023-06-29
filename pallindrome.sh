echo "Enter  number"
read num
rev=0
t=$num
while [ $num -gt 0 ];
do
    
    r=$((num % 10))
    re=$((rev * 10))
    rev=$((re + r))
    num=$((num / 10))
done
if [ $t == $rev ]; then
  echo "Number is pallindrome"
  else
  echo "Number is not pallindrome"
fi
