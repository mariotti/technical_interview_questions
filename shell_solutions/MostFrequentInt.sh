#! /bin/sh
#
./RandIntGen.sh | sort -n | uniq -c | sort -n | tail -1
#
