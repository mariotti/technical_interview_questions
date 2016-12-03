#! /bin/sh
#
QQ="QUESTIONS_OLD.md"
#QQ="bin/makeJSONfromQ.QUESTIONS.test.md"
cat ${QQ} | tail +4 | sed 's/"/``/g' | \
    awk 'BEGIN { Ccount=0; Qcount=0; QCcount=0; Ncount=0; firtsC=0; firstQ=0 } \
         /^\*\*/ {Ccount++; QCcount=0; gsub(/^\*\*/,"",$0);gsub(/\*\*$/,"",$0);\
                            if (Ccount >1) \
                            {print "\t\t\t}\n\t\t]\n\t\t},"}
                             else {print "{ \"TechQuestions\" :\n\t{ \"category\" :\n\t["}; \
                             catName=$0;
                             tagsCnum = split(catName,tagsCname,",");
                             printf("\t\t{ \"idC\" : \"C%d\", \"catname\" : \"%s\",",Ccount,$0)} \
         /^- /    {Qcount++; QCcount++; gsub(/^- */,"",$0);gsub(/^ /,"",$0);gsub(/[ ]+$/,"",$0);gsub(/:/,";",$0); if (QCcount >1) {\
                               if (Ncount > 0) {Ncount = 0;print "\"";}; \
                               print "\t\t\t},"; \
			       } \
                               else { \
                                print "\n\t\t\"question\" : [ "}; \
                                printf("\t\t\t"); \
                                printf("{"); \
                                printf("\"categoryname\" : \"%s\",",catName); \
                                printf("\"idC\" : \"C%d\",",Ccount); \
                                printf("\"idCQ\" : \"C%dQ%d\",",Ccount, QCcount); \
                                printf("\"idQ\" : \"Q%d\",",QCcount); \
                                printf("\"ID\" : \"Q%d\",",Qcount); \
                                printf("\"name\" : \"%s\"",$0); \
                                } \
         /^ /    {Ncount++; if (Ncount > 1) \
                               {gsub(/^[ \t]+/,"",$0);gsub(/[ \t]+$/,"",$0);printf("%s",$0);} \
                               else {gsub(/^[ \t]+/,"",$0);gsub(/[ \t]+$/,"",$0);printf("\t\t\t,\n\t\t\t\"notes\" : \"%s",$0)}}
         END { print "\t\t\t}\n\t\t]\n\t\t}\n\t]\n}\n}"}'
#
