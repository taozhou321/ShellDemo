#!/bin/bash

#将数组变量当作单个参数传递，它不会起作用例如 
# arr=(1 2 3 4 5)
# func1 $arr
#若视图将该数组变量当成一个函数参数，函数只会去数组变量的第一个值
#要解决这个问题，必须将该数组变量的值分解成单个值然后将这些值作为函数参数使用

function testit {
    local newarray
    newarray=('echo "$0')
    echo "The new array value is: $(newarray[*])"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}