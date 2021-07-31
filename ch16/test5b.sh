#!/bin/bash
#如同可以将命令的输出保存到shell变量一样，也可以加将函数的输出保存到shell变量中
#可以用这种技术来获取任何类型的函数输出，并将其保存到变量中

function db1 {
    read -p "Enter a value: " value
    echo $[ $value * 2 ]
}

result=`db1`
echo "the new value is $result"