#!/bin/bash
# This script prints the next 2 lines after ONE.*TWO and ONE.*\nTWO
sed -n '
/ONE/ { # if ONE was there
    /TWO/ { # if TWO was there in the same line
        n #empty the buffer and read the next line
        p #print line 1
        n #empty the buffer and read the next line
        p #print line 2
        #q # quit 
        b
    } # if two was not found on the same line, then 
    #l  #added debug
    N   #read in the next line
    #l  #added debug
    /TWO/ { # now check for two
    #l  #added debug
    n #empty the buffer and read the next line
    #l  #added debug
    p #print line 1
    n #empty the buffer and read the next line
    p #print line 2
    #q #quit
    b
    }
}' $*
