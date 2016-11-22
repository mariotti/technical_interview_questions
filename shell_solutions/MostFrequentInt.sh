#! /bin/sh
#
./RandIntGen.sh | tee x.$$.data | awk '{printf("%s ",$1)} END {print}'
time cat x.$$.data | sort -n | uniq -c | sort -n | tail -3
rm -rf x.$$.data
#
