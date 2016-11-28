#! /bin/sh
#
# See RantIntGen.sh for references
#
awk -v min=0 -v max=9 -v rep=100000000 'BEGIN{srand(); ncount=0; while (ncount < rep) {ncount++; print int(min+rand()*(max-min+1))}}' > x.REMOVEME.dat
#

