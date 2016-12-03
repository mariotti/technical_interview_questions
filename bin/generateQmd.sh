#! /bin/sh
#
# This script has a problem on "notes"!! NOT WORKING as expected
echo "# Technical Questions and Algorithms\n"
echo "## List of Categories\n"
./bin/getCategories.sh | sed 's/^"/ - /' | sed 's/"$//'
echo ""
#
cat QUESTIONS.json | jq '.' | awk ' \
/^ *"catname" *:/ {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);print "#",$2,"\n";} \
/^ *"idC" *:/  {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);idC=$2;} \
/^ *"idQ" *:/  {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);idQ=$2;} \
/^ *"idCQ" *:/ {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);idCQ=$2;} \
/^ *"ID" *:/   {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);ID=$2;} \
/^ *"notes" *:/   {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);qnotes=$2;} \
/^ *"name" *:/ {FS = ":";gsub(/^ *" */,"",$2);gsub(/",$/,"",$2);print "##",$2; \
                print "    -- IDs --";
                print "       ID Questions:",ID;
                print "       ID  Category:",idC;
                print "    ID CatQuestions:",idCQ, "\n\n";
                print "Inline notes:",qnotes,"\n\n";qnotes=""; \
                scmd=sprintf("cat discussions/%s_DISCUSSION.md", ID);\
                system(scmd)\
} \
'
