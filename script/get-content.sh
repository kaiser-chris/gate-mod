#!/bin/sh

countContent() {
  count=0
  for filename in ./mod/"$1"/*.txt; do
    count=$((count+$(strings "$filename" | grep -c '^\w.*=.*{')))
  done
  printf '%s' "$count"
}

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
printf ' - %s new Production Methods for new and old Buildings' "$productionCount"
printf '\n'
printf ' - %s new Journal Entries' "$journalEntriesCount"
printf '\n'
printf ' - %s new Events' "$eventCount"
printf '\n'
printf ' - %s new Pop' "$popCount"
printf '\n'
printf ' - %s new Good' "$goodCount"