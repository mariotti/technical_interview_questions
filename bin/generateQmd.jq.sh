#! /bin/sh
#
# JQ approach to generate an md (markdown) file
echo "# Technical Questions and Algorithms\n"
echo "## List of Categories\n"
./bin/getCategories.sh | sed 's/^"/ - /' | sed 's/"$//'
echo ""
#
# JQ Alternative: testing
cat QUESTIONS.json | jq '.' | jq -r \
    '.TechQuestions.category[] |
    ( (.catname | "\n#Category: \(.)"),
      (.question[] | ( 
        (.title  | "\n## \(.)" ) , 
        (.ID    | "\n    ID: \(.)"),
        (.idCQ  | "    idCQ: \(.)"),
        (.idQ   | "    idQ: \(.)"),
        (.idC   | "    idC: \(.)"),
        (.notes | "\n notes: \(.)")
        )
      )
    )'
