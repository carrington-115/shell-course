#!/usr/bin/bash.exe

showuptime(){
    up=$(uptime -p | cut -c4-)
    since=$(uptime -s)
    cat << EOF
----
This machine was oned at ${up}
This machine has been running since ${since}
-----
EOF

}

showuptime