echo "Enter no of terms"
read n
t1=0
t2=1
nt=$((t1 + t2))
echo "fibronacci series "
echo $t1
echo $t2
for (( i=3; i<=n; i++ ))
do
  echo $nt
  t1=$t2
  t2=$nt
  nt=$((t1 + t2))
done
