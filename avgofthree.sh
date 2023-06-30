echo "Enter 1st Number"
read a
echo "Enter 2nd Number"
read b
echo "Enter 3rd Number"
read c
sum=$((a + b + c))
avg=$(( sum / 3))
echo "Average of three number is= $avg"
