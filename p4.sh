echo "Enter no of row"
read p
for((m=1; m<=p; m++))
do
    for((a=m; a<=p; a++))
    do
      echo -ne " ";
    done
     
    for((n=1; n<=m; n++))
    do
      echo -ne "*";
    done
    for((i=1; i<m; i++))
    do
      echo -ne "*";
    done
    echo;
done
