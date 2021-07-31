#!/bin/bash
# piping a loop to another command

for state in zhout tao haha hehe
do 
    echo "$state is the next place to go"
done | sort
echo "completed"