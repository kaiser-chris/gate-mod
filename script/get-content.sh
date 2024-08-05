#!/bin/sh

# Counts all lines in .txt files that start with a character and end with ' = {'.
# This finds lines like: 'demand_magic_knowledge = {'.
# These are generally the definition of something new and therefor can
# be used to count content.
countContent() {
  count=0
  for filename in ./mod/"$1"/*.txt; do
    count=$((count+$(strings "$filename" | grep -c '^\w.*=.*{')))
  done
  printf '%s' "$count"
}

# Counts all lines in .yml files that represent localization keys.
countTranslation() {
  count=0
  for filename in ./mod/"$1"/*.yml; do
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
diplomaticActionsCount="$(countContent 'common/diplomatic_actions')"

# Localization
locCount="$(countTranslation 'localization/english')"
locCount="$((locCount+$(countTranslation 'localization/english/culture')))"

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
printf '\n'
printf ' - %s new Combat Unit Types' "$combatUnitTypesCount"
printf '\n'
printf ' - %s new Diplomatic Action' "$diplomaticActionsCount"
printf '\n'
printf ' - %s new Localization Keys' "$locCount"
