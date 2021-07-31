#!/bin/bash
# changing the IFS value

IFS.OLD=$IFS
IFS=$'\n'   #按行分割
for entry in `cat /etc/passwd`
do
    echo "values in $entry"
    IFS=:   #按:分割每行
    for value in $entry
    do
        echo "  $value"
    done
done