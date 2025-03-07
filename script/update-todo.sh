#!/bin/sh
cd ..

TOTAL_LINES=$(cat < documentation/TODOS.md | wc -l)
BEGIN_LINE=$(grep -n -e '\[\/\/\]\:.*\(TODO\-START\)' documentation/TODOS.md | cut -d : -f 1)
END_LINE=$(grep -n -e '\[\/\/\]\:.*\(TODO\-END\)' documentation/TODOS.md | cut -d : -f 1)
TAIL_LINES=$((TOTAL_LINES-END_LINE+2))

head -n "$BEGIN_LINE" documentation/TODOS.md > TEMP.md
printf '\n' >> TEMP.md
printf '| File | Line | ToDo |' >> TEMP.md
printf '\n' >> TEMP.md
printf '| ---- | ---- | ---- |' >> TEMP.md
printf '\n' >> TEMP.md
grep -roHn --include='*.txt' --include='*l_english.yml' "\#.*TODO:.*$" . | sort | sed 's/\:/ \| /' | sed 's/\:/ \| /'  | sed 's/#.*TODO\://'| while read -r line; do
  printf '| %s |' "$(printf '%s' "$line" | sed 's/\r//')" >> TEMP.md
  printf '\n' >> TEMP.md
done
printf '\n' >> TEMP.md
tail -n $TAIL_LINES documentation/TODOS.md >> TEMP.md
mv TEMP.md documentation/TODOS.md
echo 'Updated TODOS.md'