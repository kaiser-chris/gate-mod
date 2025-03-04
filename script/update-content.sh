#!/bin/sh
cd ..

# Counts all lines in .txt files that start with a character and end with ' = {'.
# This finds lines like: 'demand_magic_knowledge = {'.
# These are generally the definition of something new and therefor can
# be used to count content.
countContent() {
  count=0
  for filename in `find ./mod/"$1"/ -name "*.txt" -type f`; do
    count=$((count+$(strings "$filename" | grep -c '^\w.*=.*{')))
  done
  printf '%s' "$count"
}

# Counts all lines in .yml files that represent localization keys.
countTranslation() {
  count=0
  for filename in `find ./mod/"$1"/ -name "*.yml" -type f`; do
    count=$((count+$(strings "$filename" | grep -c '^\s\w.*:\s\".*\"')))
  done
  printf '%s' "$count"
}

# Scripts
countriesCount="$(countContent 'common/country_definitions')"
journalEntriesCount="$(countContent 'common/journal_entries')"
eventCount="$(countContent 'events/gate_events')"
popCount="$(countContent 'common/pop_types')"
buildingCount="$(countContent 'common/buildings')"
productionCount="$(countContent 'common/production_methods')"
goodCount="$(countContent 'common/goods')"
cultureCount="$(countContent 'common/cultures')"
religionCount="$(countContent 'common/religions')"
technologyCount="$(countContent 'common/technology/technologies')"
combatUnitTypesCount="$(countContent 'common/combat_unit_types')"

# Localization
locCount="$(countTranslation 'localization/english')"
locCount="$((locCount+$(countTranslation 'localization/english/culture')))"

TOTAL_LINES=$(cat < README.md | wc -l)
BEGIN_LINE=$(grep -n -e '\[\/\/\]\:.*\(CONTENT\-START\)' README.md | cut -d : -f 1)
END_LINE=$(grep -n -e '\[\/\/\]\:.*\(CONTENT\-END\)' README.md | cut -d : -f 1)
TAIL_LINES=$((TOTAL_LINES-END_LINE+2))

head -n "$BEGIN_LINE" README.md > TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Technologies' "$technologyCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Countries' "$countriesCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Cultures' "$cultureCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Religions' "$religionCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Buildings' "$buildingCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Production Methods for new and old Buildings' "$productionCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Journal Entries' "$journalEntriesCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Events' "$eventCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Pops' "$popCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Goods' "$goodCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Combat Unit Types' "$combatUnitTypesCount" >> TEMP.md
printf '\n' >> TEMP.md
printf ' - %s new Localization Keys' "$locCount" >> TEMP.md
printf '\n' >> TEMP.md
printf '\n' >> TEMP.md
tail -n $TAIL_LINES README.md >> TEMP.md
mv TEMP.md README.md
echo 'Updated README.md'