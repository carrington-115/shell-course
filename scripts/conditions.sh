#!/usr/bin/bash.exe

if [ ${1,,} = mark ]; then
    echo "I know you Mark"
elif [ ${1,,} = help ]; then
    echo "How can I help?"
else
    echo "Why are you here?"

fi