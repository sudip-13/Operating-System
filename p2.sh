echo "Enter no of row"
read n
for (( i=0; i<n; i++ ))
do
for(( j=0 ; j<i ; j++ ))
do
echo -n "$((j+1))"
done
echo
done
