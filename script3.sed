#!/bin/bash
# This script was done as an exercise for Step 7 in http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_05_05.html

sed -n '/   $/ {
            h
            s/\(.*[^    ]\)\([  ]*\)$/\2/
            x
            s/\(.*[^    ]\)\([  ]*\)$/\1/
            x
            y/  /$$/
            H
            g
            s/\n/ /
            p
            }

            ' $*
