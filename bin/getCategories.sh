#! /bin/sh
cat QUESTIONS.json | jq '.' | jq '.TechQuestions.category[].name'
#
