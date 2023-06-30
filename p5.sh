echo "Enter no of rows"
read r
num=1
for((i=1; i<=$r; i++))
do
  for((j=1; j<=$r - $i; j++))
  do
    echo -n "  "
  done
  num=$i
  k=1
  for((j=1; j<=2*$i - 1; j++))
  do
    if [ $j -lt $i ];
    then
      echo -n "$num "
      num=$((num + 1))
    elif [ $j -eq $i ];
    then
      echo -n "$num "
      num=$((num - 1))
    else
      echo -n "$num "
      num=$((num - 1))
    fi
  done
  echo
done
