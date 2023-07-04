echo "Enter choice"
echo "1: for grade of 1st language"
echo "2: for grade of 2nd language"
echo "3: for grade of  Mathematics"
echo "4: for grade of physics"
read ch
case $ch in

  1)
  echo "Enter Marks of 1st language"
  read f
    if [ $f -gt 90 ] && [ $f -lt 101 ]; then
    echo "Grade in 1st language A+"
    elif [ $f -gt 80 ] && [ $f -lt 91 ]; then
   echo "Grade 1st language A"
   elif [ $f -gt 70 ] && [ $f -lt 81 ]; then
   echo "Grade 1st language B"
   elif [ $f -gt 80 ] && [ $f -lt 71 ]; then
   echo "Grade 1st language C"
else
  echo "Grade 1st language F"
fi
    ;;

  2)  echo "Enter Marks of 2nd language"
  read f
    if [ $f -gt 90 ] && [ $f -lt 101 ]; then
    echo "Grade in 2nd language A+"
    elif [ $f -gt 80 ] && [ $f -lt 91 ]; then
   echo "Grade 2nd language A"
   elif [ $f -gt 70 ] && [ $f -lt 81 ]; then
   echo "Grade 2nd language B"
   elif [ $f -gt 80 ] && [ $f -lt 71 ]; then
   echo "Grade 2nd language C"
else
  echo "Grade 2nd language F"
fi
    ;;

  3)echo "Enter Marks of Mathematics"
  read f
    if [ $f -gt 90 ] && [ $f -lt 101 ]; then
    echo "Grade in Mathematics A+"
    elif [ $f -gt 80 ] && [ $f -lt 91 ]; then
   echo "Grade Mathematics A"
   elif [ $f -gt 70 ] && [ $f -lt 81 ]; then
   echo "Grade Mathematics B"
   elif [ $f -gt 80 ] && [ $f -lt 71 ]; then
   echo "Grade Mathematics C"
else
  echo "Grade Mathematics F"
fi
    ;;
  4)echo "Enter Marks of Physics"
  read f
    if [ $f -gt 90 ] && [ $f -lt 101 ]; then
    echo "Grade in Physics A+"
    elif [ $f -gt 80 ] && [ $f -lt 91 ]; then
   echo "Grade Physics A"
   elif [ $f -gt 70 ] && [ $f -lt 81 ]; then
   echo "Grade Physics B"
   elif [ $f -gt 80 ] && [ $f -lt 71 ]; then
   echo "Grade Mathematics C"
else
  echo "Grade Physics F"
fi
    ;;
  *)
    echo "invalid"
    ;;
esac
