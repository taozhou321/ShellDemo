#!/bin/bash
# bash shell 会讲函数当作小型脚本处理。这意味着你可以向函数传递参数，就跟普通脚本一样
# 在脚本中指定函数时，必须将参数和函数放在同一行

function addem {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo -1
    elif [ $# -eq 1 ]
    then 
        echo $[ $1 + $1 ]
    else 
        echo $[ $1 + $2 ]
    fi
}

echo -n "Adding 10 and 15:"
value=`addem 10 15`
echo -n "Let's try adding just one number:"
value=`addem 10`
echo $value
echo -n "Now trying adding no numbers:"
value=`addem`
echo $value
echo -n "Finally. try adding three numbers:"
value=`addem 10 15 20`
echo $value

#当函数使用特殊参数环境变量作为自己的参数值，它不能直接从脚本的命令行获取脚本的参数值
# function badfunc1 {
#     echo $[ $1 * $2 ];
# }

# if [ $# -eq 2 ]
# then 
#     value='badfunc1'
#     echo "The result is $value"
# else
#     echo "Usage: badtest1 a b"
# fi
#命令行输入：./badtest1 10 15会报错