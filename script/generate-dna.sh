#!/bin/bash

inject_dna=$(cat < dna_injection.txt | tr -s '\n' ' ')

cd ..

rm ./mod/common/dna_data/00_dna.txt

find ./mod/common/dna_data/ -name "*.txt" -type f -print0 | while read -d $'\0' filename
do
  sed -i "s/teeth_accessory.*\=.*\"normal_teeth\".*\"normal_teeth\".*/teeth_accessory={ \"normal_teeth\" 0 \"normal_teeth\" 0 }\n$inject_dna/g" "$filename"
done