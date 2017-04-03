#! /bin/bash
#
# From: http://stackoverflow.com/questions/31930041/using-jq-or-alternative-command-line-tools-to-diff-json-files
#
jqdiff () {
    jq --argfile a ${1} --argfile b ${2} -n 'def post_recurse(f): def r: (f | select(. != null) | r), .; r; def post_recurse: post_recurse(.[]?); ($a | (post_recurse | arrays) |= sort) as $a | ($b | (post_recurse | arrays) |= sort) as $b | $a == $b'
}
#
diffjq () {
    #WARNING: asis works only in bash
    diff <(jq -S . ${1}) <(jq -S . ${2})
}
#

#
file1st=${1}
file2nd=${2}
#
diffjq ${file1st} ${file2nd}
#
