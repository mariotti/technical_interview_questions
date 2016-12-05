#! /bin/sh
if [ "${1}a" == "a" ];
then
    echo "please give a sections name";
    exit 0
fi;
qst=${1}
cat QUESTIONS.json | jq '.' | \
    jq --arg catname ${qst} '.TechQuestions.category[] | select(.catname==$catname) | .question[].name'
#cat QUESTIONS.json | jq '.' | jq '.TechQuestions.category[] | select(.catname=="Strings") | .question[].name'
# JSON of the CAT: cat QUESTIONS.json | jq '.' | jq '.TechQuestions.category[] | select(.catname=="Strings")'
#
