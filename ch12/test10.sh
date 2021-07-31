#!/bin/bash

# while test command
# do
#     other commands
# done
#可用[]代替 test命令

var1=10
while [ $var1 -gt 0 ]
do
    echo $var1
    var1=$[ $var1 - 1 ]
done