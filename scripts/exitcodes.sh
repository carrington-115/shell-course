showname(){
    echo $1
    if [ ${1,,}=mark ]; then
        return 0
    else
        return 1
    fi
}