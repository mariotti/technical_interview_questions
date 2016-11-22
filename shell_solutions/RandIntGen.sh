#! /bin/sh
#
# From: http://unix.stackexchange.com/questions/140750/generate-random-numbers-in-specific-range
#
# We just get one as example..
awk -v min=0 -v max=9 -v rep=10 'BEGIN{srand(); ncount=0; while (ncount < rep) {ncount++; print int(min+rand()*(max-min+1))}}'
exit 0
# On mac example
jot -r 1000 0 10
exit 0
#
# One more example
MACOS=1
if [ $MACOS == 1 ]; then
    gshuf -i 1-100 -n 10;
else
    shuf -i 1-100 -n 10;
fi
#

