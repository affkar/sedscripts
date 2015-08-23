#!/bin/sed -f
/^one/ {
    # Ok so we found a line that starts with one, 
    # let's append \n and read in the next line
    N 
    # we should delete the first line alone, if we found the next line to end in "two". so let's search for /two$/ and if found, let's use D to delete until \n 
    /two$/ {
        D
    }
    /two$/ !{
        s/^one\(.*\)/\1/
    }
}


