count=0;
while [ $count -lt 21 ];
do
    if [ $((count % 2)) == 0 ]; then
  echo "$count"
  ((count++))
  else
  ((count++))
  fi
done
