#!/bin/bash
# This script was done as an exercise for Step 5 in http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_05_05.html

sed -n '1,3 d
/an/ p 
/man/ a***This might have something to do with man and man pages***' $*
