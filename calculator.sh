echo "Enter two number"
read num1
read num2
echo "Enter choice"
echo "1: for addition"
echo "2: for subtraction"
echo "3: for multiplication"
echo "4: for divison"
read ch
case $ch in

  1)res=$((num1 + num2))
    echo "Result is $res"
    ;;

  2)res=$((num1 - num2))
    echo "Result is $res"
    ;;

  3)res=$((num1 * num2))
    echo "Result is $res"
    ;;
  4)res=$((num1 / num2))
    echo "Result is $res"
    ;;
  *)
    echo "invalid"
    ;;
esac
