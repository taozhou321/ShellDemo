#!/bin/bash

#在linux中，目录名和文件名包含空格是合法的。要容纳这种值，你应该将$file变量用双引号圈起来
#如果不这么做，遇到含有空格的目录名或文件名时会有错误产生

cd ..
for file in $(pwd)
do 
    if [ -d "$file" ]
    then 
        echo "$file is a directory"
    elif [ -f "$file" ]
    then 
        echo "$file is a file"
    fi
done