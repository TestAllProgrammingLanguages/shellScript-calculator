#!/bin/bash
source ./funcs.txt

read -p "enter number 1: " input1
read -p "enter number 2: " input2

num1=$input1
num2=$input2

select CHOICE in "add + " "sub - " "mult * " "div / " "mod % "
do
  case $REPLY in
    1)
      echo $CHOICE
      add $num1 $num2
      ;;
    2)
      echo $CHOICE
      sub $num1 $num2
      ;;
    3)
      echo $CHOICE
      mult $num1 $num2
      ;;
    4)
      echo $CHOICE
      div $num1 $num2
      ;;
    5)
      echo $CHOICE
      mod $num1 $num2
      ;;
  esac
done
