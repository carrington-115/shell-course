#!/usr/bin/bash.exe

up=30
since=7:35

echo $up $since

showuptime(){
    local up=21
    local since=7:38
    cat << EOF
----
This machine was oned at ${up}
This machine has been running since ${since}
-----
EOF

}

showuptime
echo $up $since