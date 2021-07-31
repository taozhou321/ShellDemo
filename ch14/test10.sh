#!/bin/bash
# redirecting all output to a file
# 用exec命令shell在脚本执行期间重定向某个特定文件描述符
exec 1>testout

echo "hello"
echo "my name is zhoutao"
echo "what's your name ?"