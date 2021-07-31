#!/bin/bash

# $# 参数个数
# $* 会将所有参数当成单个变量
# $@ 会单独处理每个参数


total=$[ $1 * $2 ]
echo "\$0=$0"
echo "the number of paramter is $#"
echo "\$1=$1 \$2=$2 total=$total"