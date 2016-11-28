#! /bin/sh
#
time cat x.REMOVEME.dat | sort -n | uniq -c | sort -n | tail -3
#
