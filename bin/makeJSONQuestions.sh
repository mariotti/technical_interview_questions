#! /bin/sh
#
exho "please use now as master file only the QUESTIONS.json"
exit 0
#
./bin/makeJSONfromQ.sh | json_reformat > QUESTIONS.json
./bin/generateQmd.sh > QUESTIONS_N.md
#
