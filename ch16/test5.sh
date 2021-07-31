#!/bin/bash
# using the return command in a function

function db1 {
    read -p "Enter a value: " value
    echo "doubling the value"
    return $[ $value * 2 ]
}

db1 
echo "The new value is $?"
#在用$?变量提取函数返回值前执行了其他命令，函数返回值可能会丢失
#记住，$?变量会返回执行的最后一条命令的推出状态码

#由于退出状态码必须小于256，函数的结果必须生产一个小于256的整数值。任何大于256的值都会返回一个错误值