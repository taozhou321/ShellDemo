#!/bin/bash

filename=$1
if [ -f ${filename} ]
then 
    echo "================================="
    cat ${fileName}
    echo "*********************************"
else 
    echo "Could not find ${filename}"
    exit
fi





