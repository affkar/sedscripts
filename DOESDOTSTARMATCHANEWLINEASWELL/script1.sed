#!/bin/bash
sed  '
/ONE/ {
    N
    /ONE.*TWO/ {
    a.* matches \n
    }
    /\n.*TWO/ {
    a\\\n.* matches
    }
}
' $*

