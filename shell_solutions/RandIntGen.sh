#! /bin/sh
#
# From: http://unix.stackexchange.com/questions/140750/generate-random-numbers-in-specific-range
#
# We just get one as example..
# awk -v min=5 -v max=10 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'
jot -r 1000 0 10
exit 0
#
MACOS=1
if [ $MACOS == 1 ]; then
    gshuf -i 1-100 -n 10;
else
    shuf -i 1-100 -n 10;
fi
#

