#!/bin/bash

#方式1
for (( i=1; i < 10; i++ ))
do
    echo "this number is $i"
done

#方式2
# for i in {1..10} 
# do 
#     echo i=$i
# done

#方式3 range and step
#貌似这里不支持
# for i in {0..10..2}
# do
#     echo i=$i
# done
