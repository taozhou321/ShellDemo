#!/bin/bash
# extracting command line options and values with getopt


#getopt ab:c:de::
#1、单个字符，表示选项（如下例中的abcde各为一个选项）。比如：./a.out -a
#2、单个字符后接一个冒号：表示该选项后必须跟一个参数。参数紧跟在选项后或者以空格隔开。
#   该参数的指针赋给optarg（如下例中的b:c:）。比如：./a.out -b zhang
#3、单个字符后跟两个冒号，表示该选项后可以跟一个参数，也可以不跟。如果跟一个参数，参数必须紧跟在选项后不能以空格隔开。
#   该参数的指针赋给optarg。(如上例中的e::，如果没有跟参数，则optarg = NULL)。./a.out -ezhang

optstring=`getopt ab:c "$@"`
echo "optstring = $optstring"
set --  $optstring  #--选项 将命令行参数替换为set命名的命令行的值
while [ -n "$1" ]
do 
    case "$1" in
    -a) echo "Found the -a option" ;;
    -b) param="$2"
        echo "Found the -b option, with parameter value $param"
        shift;;
    -c) echo "Found the -c option" ;;
    --) shift
        break;;
    *) echo "$1 is not an option" ;;
    esac
    shift
done

count=1
for param in "$@"
do 
    echo "parameter #$count: $param"
    count=$[ $count + 1 ]
done