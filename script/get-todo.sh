#!/bin/sh
printf '| File | Line | ToDo |'
printf '\n'
printf '| ---- | ---- | ---- |'
printf '\n'
grep -roHn --exclude='*.md' --exclude='*.sh' "\#TODO:.*$" . | sort | sed 's/\:/ \| /' | sed 's/\:/ \| /'  | sed 's/#TODO\://'| while read -r line; do
  printf '| %s |' "$(printf '%s' "$line" | sed 's/\r//')"
  printf '\n'
done
