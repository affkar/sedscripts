#!/bin/bash
sed  '=' $* | sed -nr '1,$ { 
N 
s/(.*)\n(.*)/\1\t\2/ p
}'

