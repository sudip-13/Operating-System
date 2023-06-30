echo "Enter no of row"
read n
for (( i=n; i>0; i-- ))
do
for(( j=i ; j>0 ; j-- ))
do
echo -n "*"
done
echo
done
