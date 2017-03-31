#! /bin/sh
if [ "${1}a" == "a" ];
then
    echo "please give a category name";
    echo "Valid categories are:";
    ./bin/getCategories.sh
    exit 0
fi;
qst=${1}
cat QUESTIONS.json | jq '.' | \
    jq --arg catname ${qst} '.TechQuestions.category[] | select(.catname==$catname) | .question[].title'
#
