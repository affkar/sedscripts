#!/bin/bash
# This script was done as an exercise for Step 6 in http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_05_05.html

sed -n '/^l/ {
            i--This is a symlink--
            p 
            }
        /^-/ {
        a<--this is a plain file
        p
        }'
