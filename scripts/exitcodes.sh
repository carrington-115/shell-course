#!/usr/bin/bash.exe

showname(){
    echo hello $1
    if [ ${1,,} = mark ]; then
        return 0
    else
        return 1
    fi
}

showname $1

if [ $? = 1 ]; then
    echo "This is an unknown user"
fi