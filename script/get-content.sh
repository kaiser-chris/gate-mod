#!/bin/sh

# Get countries
countriesCount=$(strings ./mod/common/country_definitions/400_gate_countries.txt | grep '^\w.*=.*{' | wc -l)

# Get Journal Entries
journalEntriesCount=0
for filename in ./mod/common/journal_entries/*.txt; do
  journalEntriesCount=$((journalEntriesCount+$(strings "$filename" | grep '^\w.*=.*{' | wc -l)))
done

# Get Events
eventCount=0
for filename in ./mod/events/gate_events/*.txt; do
  eventCount=$((eventCount+$(strings "$filename" | grep '^\w.*=.*{' | wc -l)))
done

# Get Events
popCount=0
for filename in ./mod/common/pop_types/*.txt; do
  popCount=$((popCount+1))
done

# Get Buildings
buildingCount=0
for filename in ./mod/common/buildings/*.txt; do
  buildingCount=$((buildingCount+$(strings "$filename" | grep '^\w.*=.*{' | wc -l)))
done

# Get Goods
goodCount=0
for filename in ./mod/common/goods/*.txt; do
  goodCount=$((goodCount+$(strings "$filename" | grep '^\w.*=.*{' | wc -l)))
done

# Get Cultures
cultureCount=0
for filename in ./mod/common/cultures/*.txt; do
  cultureCount=$((cultureCount+$(strings "$filename" | grep '^\w.*=.*{' | wc -l)))
done

printf " - $countriesCount new Countries"
printf '\n'
printf " - $cultureCount new Cultures"
printf '\n'
printf " - $buildingCount new Buildings"
printf '\n'
printf " - $journalEntriesCount new Journal Entries"
printf '\n'
printf " - $eventCount new Events"
printf '\n'
printf " - $popCount new Pop"
printf '\n'
printf " - $goodCount new Good"