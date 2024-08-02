#!/bin/sh
cd ..

TOTAL_LINES=$(cat README.md | wc -l)
BEGIN_LINE=$(grep -n -e '\[\/\/\]\:.*\(CONTENT\-START\)' README.md | cut -d : -f 1)
END_LINE=$(grep -n -e '\[\/\/\]\:.*\(CONTENT\-END\)' README.md | cut -d : -f 1)
TAIL_LINES=$((TOTAL_LINES-END_LINE+2))

head -n "$BEGIN_LINE" README.md > TEMP.md
printf '\n' >> TEMP.md
./script/get-content.sh >> TEMP.md
printf '\n' >> TEMP.md
printf '\n' >> TEMP.md
tail -n $TAIL_LINES README.md >> TEMP.md
mv TEMP.md README.md
echo 'Updated README.md'