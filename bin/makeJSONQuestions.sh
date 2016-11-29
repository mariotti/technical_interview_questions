#! /bin/sh
#
./bin/makeJSONfromQ.sh | json_reformat > QUESTIONS.json
./bin/generateQmd.sh > QUESTIONS_N.md
#
