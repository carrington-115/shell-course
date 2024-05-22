#!/usr/bin/bash.exe

case ${1,,} in
    mark | administrator)
        echo "I know you"
        ;;
    help)
        echo "What do you want to know"
        ;;
    *)
        echo "I do not know you"
        ;;

esac