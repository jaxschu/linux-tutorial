#!/bin/bash
mycase=3
case $mycase in
    1) echo "you choose bash";;
    2) echo "this is jason";;
    3) echo "hello";;
    4) exit
esac

A=10
((B=A*A+10))
function File {
    my_array=(apple banana orange)
    echo ${my_array[2]}
    echo ${my_array[@]}
    echo "B=$B"
    echo "Number of arguments is $#"
}

if [ $# -eq 2 ]; then
  File "$@"
  echo "File $*"
  exit 0
fi
