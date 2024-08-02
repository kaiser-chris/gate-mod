#!/bin/sh

# Get countries
countriesCount=0
for filename in ./mod/common/country_definitions/*.txt; do
  countriesCount=$((countriesCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Journal Entries
journalEntriesCount=0
for filename in ./mod/common/journal_entries/*.txt; do
  journalEntriesCount=$((journalEntriesCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Events
eventCount=0
for filename in ./mod/events/gate_events/*.txt; do
  eventCount=$((eventCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Events
popCount=0
for filename in ./mod/common/pop_types/*.txt; do
  popCount=$((popCount+1))
done

# Get Buildings
buildingCount=0
for filename in ./mod/common/buildings/*.txt; do
  buildingCount=$((buildingCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Goods
goodCount=0
for filename in ./mod/common/goods/*.txt; do
  goodCount=$((goodCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Cultures
cultureCount=0
for filename in ./mod/common/cultures/*.txt; do
  cultureCount=$((cultureCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Religions
religionCount=0
for filename in ./mod/common/religions/*.txt; do
  religionCount=$((religionCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

# Get Technologies
technologyCount=0
for filename in ./mod/common/technology/technologies/*.txt; do
  technologyCount=$((technologyCount+$(strings "$filename" | grep -c '^\w.*=.*{')))
done

printf ' - %s new Technologies' "$technologyCount"
printf '\n'
printf ' - %s new Countries' "$countriesCount"
printf '\n'
printf ' - %s new Cultures' "$cultureCount"
printf '\n'
printf ' - %s new Religions' "$religionCount"
printf '\n'
printf ' - %s new Buildings' "$buildingCount"
printf '\n'
printf ' - %s new Journal Entries' "$journalEntriesCount"
printf '\n'
printf ' - %s new Events' "$eventCount"
printf '\n'
printf ' - %s new Pop' "$popCount"
printf '\n'
printf ' - %s new Good' "$goodCount"